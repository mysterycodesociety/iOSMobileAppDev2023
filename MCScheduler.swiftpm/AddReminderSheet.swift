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
        
        if(appInfo.editMode){
            VStack{
                            HStack{
                                
                                Button("Done") {
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
                                        appInfo.editMode.toggle()
                                    }
                                }
                                .padding(4)
                                
                               
                                
                            }
                        }
                VStack{
                    Form{
                        TextField("Reminder Title", text: $appInfo.savedReminder)
                        if #available(iOS 16.0, *) {
                            TextField("Reminder Content", text: $appInfo.savedContent, axis: .vertical)
                        } else {
                            TextField("Reminder Content", text: $appInfo.savedContent)
                        }
                        DatePicker(selection: $appInfo.savedDate, label: {Text("Due Date")})
                    }
                    
                }
        }
        else{
            VStack{
                            HStack{
                                Button("Cancel") {
                                    appInfo.savedReminder = ""
                                    appInfo.savedContent = ""
                                    appInfo.savedDate = Date()
                                    dismiss()
                                }
                                    .padding(5)
                                
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
                                .padding(4)
                                
                               
                                
                            }
                        }
                VStack{
                    Form{
                        TextField("Reminder Title", text: $appInfo.savedReminder)
                        if #available(iOS 16.0, *) {
                            TextField("Reminder Content", text: $appInfo.savedContent, axis: .vertical)
                        } else {
                            TextField("Reminder Content", text: $appInfo.savedContent)
                        }
                        DatePicker(selection: $appInfo.savedDate, label: {Text("Due Date")})
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
    @Published var editMode = false;
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
