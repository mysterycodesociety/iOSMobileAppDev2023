//
//  AddReminderSheet.swift
//  MCScheduler
//
//  Created by Student on 9/30/23.
//

import SwiftUI



struct AddReminderSheet: View{
    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject var appInfo: AppInformation
    @State private var showingAlert: Bool = false
    var body: some View{
        
        ZStack{
            VStack{
                Form{
                    TextField("Reminder Title", text: $appInfo.savedReminder)
                    TextField("Reminder Content", text: $appInfo.savedContent)
                    DatePicker(selection: $appInfo.savedDate, label: {Text("Date")})
                }
                
            }
            VStack{
                HStack{
                    Button("Save") {
                        if(appInfo.savedReminder != ""){
                            showingAlert = false;
                            let newId = UUID().uuidString
                            let item = makeReminder(id: newId, title: appInfo.savedReminder,
                                                    content: appInfo.savedContent,dueDate: appInfo.savedDate.timeIntervalSince1970, createdDate: Date().timeIntervalSince1970, isDone: false)
                            
                            appInfo.arrayReminders.append(item)
                            
                            dismiss()
                            
                            appInfo.savedReminder = ""
                            appInfo.savedContent = ""
                            appInfo.savedDate = Date()
                        }
                    }
                    .frame(width: 115, height: 28).foregroundColor(Color.white).background(Color.blue).cornerRadius(9).padding(4)
                    
                    Button("Cancel") { dismiss() }
                        .frame(width: 115, height: 28).foregroundColor(Color.white).background(Color.red).cornerRadius(9).padding(5)
                }
            }
            
        }
        
    }
    
}

class AppInformation: ObservableObject{
    @Published  var arrayRemind: [String] = [];
    @Published  var arrayDate: [Date] = [];
    @Published  var savedReminder = "";
    @Published var savedContent = "";
    @Published  var savedDate = Date();
    @Published var arrayReminders: [makeReminder] = []{
        didSet{
            saveReminders()
        }
    }
    
    func saveReminders(){
        if let encodedData = try? JSONEncoder().encode(arrayReminders){
            UserDefaults.standard.set(encodedData, forKey: "REMINDERS")
        }
    }
    
    func deleteReminder(offsets: IndexSet){
        arrayReminders.remove(atOffsets: offsets)
    }
}

struct makeReminder: Codable, Identifiable{
    let id: String
    let title: String
    let content: String
    let dueDate: TimeInterval
    let createdDate: TimeInterval
    var isDone: Bool
    
    mutating func setDone(_ state: Bool){
        isDone = state
    }
}


