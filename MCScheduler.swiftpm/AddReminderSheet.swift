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
                    TextField("Type your reminder", text: $appInfo.savedReminder)
                    DatePicker(selection: $appInfo.savedDate, label: {Text("Date")})
                }
                
            }
            VStack{
                HStack{
                    Button("Save") {
                        if(appInfo.arrayRemind.contains(appInfo.savedReminder) && appInfo.arrayDate.contains(appInfo.savedDate)){
                            showingAlert = true;
                        }
                        else{
                            if(appInfo.savedReminder != ""){
                                showingAlert = false;
                                appInfo.arrayRemind.append(appInfo.savedReminder);
                                appInfo.arrayDate.append(appInfo.savedDate)
                                dismiss()
                                
                                appInfo.savedReminder = ""
                                appInfo.savedDate = Date()
                            }
                            }
                    }.alert(isPresented: $showingAlert){
                        Alert(title: Text("Duplicate Reminder"), message: Text("You already have this reminder. Are you sure you want to add this?"), primaryButton: .cancel(), secondaryButton: .default(Text("Yes")){
                            if(appInfo.savedReminder != ""){
                                appInfo.arrayRemind.append(appInfo.savedReminder);
                                appInfo.arrayDate.append(appInfo.savedDate)
                                
                                dismiss()
                                
                                appInfo.savedReminder = ""
                                appInfo.savedDate = Date()
                            }
                        })
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
    @Published  var savedDate = Date();
    @Published var arrayReminders = []
}

struct makeReminder: Codable, Identifiable{
    let id: String
    let title: String
    let dueDate: TimeInterval
    let createdDate: TimeInterval
    var isDone: Bool
    
    mutating func setDone(_ state: Bool){
        isDone = state
    }
}

func newReminder(){
    
}
