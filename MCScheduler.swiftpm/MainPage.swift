import SwiftUI

struct MainPage: View {
    var body: some View {
        VStack{
            HStack{
                Text("Your Reminders").font(.largeTitle).offset(CGSize(width: -40.0, height: 0.0))
                Button("+") { print("Button tapped!") }.font(.largeTitle).offset(CGSize(width: 40.0, height: 0.0))
            }
            VStack{
                ScrollView{
                    Rectangle().foregroundColor(.blue).frame(width:350, height: 200).cornerRadius(12.0)
                    Rectangle().foregroundColor(.blue).frame(width:350, height: 200).cornerRadius(12.0)
                }
            }
            
            
        }
    }
}
