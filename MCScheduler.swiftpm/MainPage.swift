import SwiftUI

struct MainPage: View {
    
    @EnvironmentObject var appInfo: AppInformation
    @State private var shouldPresentSheet = false;
    var body: some View {
        NavigationView {
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
                                    .font(.footnote)
                                    .fontWeight(.light)
                                NavigationLink("More...") {
                                    VStack(alignment:.leading){
                                        Text("Due Date: \(Date(timeIntervalSince1970: item.dueDate).formatted(date: .abbreviated, time: .shortened))").font(.headline).fontWeight(.bold).foregroundColor(Color.yellow)
                                        Text("Created Date: \(Date(timeIntervalSince1970: item.createdDate).formatted(date: .abbreviated, time: .shortened))")
                                            .font(.footnote)
                                            .fontWeight(.light)
                                        
                                        Text(item.content)
                                            .font(.body)
                                            .multilineTextAlignment(.leading)
                                            .padding(.top, 6.0).frame(width: 310).fixedSize(horizontal: false, vertical: true)
                                        Spacer()
                                    }.navigationTitle(item.title)
                                }.foregroundColor(Color.blue)
                            }
                        }.onDelete(perform:  appInfo.deleteReminder
                        )
                    }
                }.navigationTitle("Your Reminders").toolbar{
                    HStack{
                        Button{ shouldPresentSheet.toggle() }label: {
                            Image(systemName: "plus")
                        }
                        .sheet(isPresented: $shouldPresentSheet) {
                            if #available(iOS 16.4, *) {
                                AddReminderSheet()
                                    .presentationDetents([.medium]).presentationCornerRadius(15)
                            } else {
                                AddReminderSheet()
                            }
                            Spacer(minLength: 1)
                        }
                    }
                }.onAppear{
                    getItems()
                }
            }
            else{
                ScrollView{
                    VStack{
                        Spacer(minLength: 100)
                        Text("Empty").font(.largeTitle).foregroundColor(Color.gray).opacity(0.8)
                        Spacer(minLength: 100)
                        Button{ shouldPresentSheet.toggle() }label: {
                            Text("Add")
                        }.frame(width: 310, height: 50).foregroundColor(Color.white).background(Color.blue).cornerRadius(50)
                            .sheet(isPresented: $shouldPresentSheet) {
                                if #available(iOS 16.4, *) {
                                    AddReminderSheet()
                                        .presentationDetents([.medium]).presentationCornerRadius(9)
                                } else {
                                    AddReminderSheet()
                                }
                            }.shadow(color: Color.black.opacity(0.5),radius: 20,x:0,y:30)
                    }.frame(width:400)
                    
                }.frame(width: 400).navigationTitle("Your Reminders").toolbar{
                    Button{ shouldPresentSheet.toggle() }label: {
                        Image(systemName: "plus")
                    }
                    .sheet(isPresented: $shouldPresentSheet) {
                        if #available(iOS 16.4, *) {
                            AddReminderSheet()
                                .presentationDetents([.medium]).presentationCornerRadius(9)
                        } else {
                            AddReminderSheet()
                        }
                    }
                }.onAppear{
                    getItems()
                }
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

