import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            CircleImage()
            
            VStack {
                Text("Pratigya's Reminder")
                    .font(.largeTitle)
                    .foregroundColor(.red)
                
                Button("Next") {
                    NavigationLink("Next", destination: secondpage())
                }.frame(width: 70, height:40)
                    .foregroundColor(.white)
                    .background(.blue)
                    .cornerRadius(10)
                
                
            }
            
            .padding(10)
            
            }
        }
    }
