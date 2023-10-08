import SwiftUI

struct MainPage: View {
    
    @EnvironmentObject var appInfo: AppInformation
    @State private var shouldPresentSheet = false;
    var body: some View {
        
        VStack{
            HStack{
                Text("Your Reminders").font(.largeTitle).offset(CGSize(width: -40.0, height: 0.0))
                Button{ shouldPresentSheet.toggle() }label: {
                    Image(systemName: "plus")
                }.frame(width: 30, height: 30).foregroundColor(Color.white).background(Color.blue).cornerRadius(15).offset(CGSize(width: 40.0, height: 0.0))
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
                ScrollView{
                        if(appInfo.arrayRemind.count > 0){
                            ForEach(0..<appInfo.arrayRemind.count, id: \.self){i in
                                List{
                                    Text(appInfo.arrayRemind[i])
                                    
                                    Text("Due Date: " + appInfo.arrayDate[i].formatted(date: .abbreviated, time: .shortened))
                                }.frame(width: 300, height: 120).cornerRadius(15)
                            }
                        }
                    else{
                        Text("Empty").font(.largeTitle).foregroundColor(Color.gray).opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/).offset(CGSize(width: 0, height: 100))
                    }
                    
                }
                .padding(.vertical, 20.0)
            }
        }
    }
}

