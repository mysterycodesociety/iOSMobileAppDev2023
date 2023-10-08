import SwiftUI

struct MainPage: View {
    
    @EnvironmentObject var appInfo: AppInformation
    @State private var shouldPresentSheet = false;
    var body: some View {
        
        VStack{
            
            HStack{
                Text("Your Reminders").font(.largeTitle).fontWeight(.bold).offset(CGSize(width: -38.0, height: 0.0))
                Button{ shouldPresentSheet.toggle() }label: {
                    Image(systemName: "plus")
                }.frame(width: 30, height: 30).foregroundColor(Color.white).background(Color.blue).cornerRadius(15).offset(CGSize(width: 30.0, height: 0.0))
                    .sheet(isPresented: $shouldPresentSheet) {
                        if #available(iOS 16.4, *) {
                            AddReminderSheet()
                                .presentationDetents([.medium]).presentationCornerRadius(9)
                        } else {
                            AddReminderSheet()
                        }
                    }
                
            }
            VStack{
                if(appInfo.arrayReminders.count>0){
                    List{
                        Section{
                            ForEach(0..<appInfo.arrayReminders.count, id:\.self){
                                i in
                                let item = appInfo.arrayReminders[i]
                                
                                
                                VStack(alignment: .leading){
                                    Text(item.title).font(.title).fontWeight(.bold)
                                    Text("Due Date: \(Date(timeIntervalSince1970: item.dueDate).formatted(date: .abbreviated, time: .shortened))").font(.headline).fontWeight(.bold).foregroundColor(Color.yellow)
                                    Text("Created Date: \(Date(timeIntervalSince1970: item.createdDate).formatted(date: .abbreviated, time: .shortened))")
                                }
                            }.onDelete(perform:  appInfo.deleteReminder
                            )
                        }
                    }
                }
                else{
                    ScrollView{
                        Text("Empty").font(.largeTitle).foregroundColor(Color.gray).opacity(0.8).offset(CGSize(width: 0.0, height: 100.0))
                        
                    }
                }
            }.onAppear{
                getItems()
            }
        }
        
    }
    func getItems(){
        guard
            let reminderData = UserDefaults.standard.data(forKey: "REMINDERS"),
            let savedItems = try? JSONDecoder().decode([makeReminder].self, from: reminderData)
        else {return}
        
        self.appInfo.arrayReminders = savedItems
    }
}

