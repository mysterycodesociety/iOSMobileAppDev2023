import SwiftUI

struct MainPage: View {
    @State private var shouldPresentSheet = false;
    var body: some View {
        
        VStack{
            HStack{
                Text("Your Reminders").font(.largeTitle).offset(CGSize(width: -40.0, height: 0.0))
                Button("+") { shouldPresentSheet.toggle() }.font(.largeTitle).offset(CGSize(width: 40.0, height: 0.0))
                    .sheet(isPresented: $shouldPresentSheet) {
                       
                                   } content: {
                                       AddReminderSheet()
                                   }
                    
            }
            VStack{
                ScrollView{
                    Rectangle().foregroundColor(.blue).frame(width:350, height: 200).cornerRadius(12.0)
                    Rectangle().foregroundColor(.blue).frame(width:350, height: 200).cornerRadius(12.0)
                }
            }
            VStack{
                HStack{
                    Button("Save") { print("Save Button Tapped!") }.frame(width: 115, height: 28).foregroundColor(Color.white).background(Color.blue).cornerRadius(9).padding(4)
                    
                    Button("Cancel") { print("Cancel Button Tapped!") }.frame(width: 115, height: 28).foregroundColor(Color.white).background(Color.red).cornerRadius(9).padding(5)
                }
            }
            
            
        }
    }
}
