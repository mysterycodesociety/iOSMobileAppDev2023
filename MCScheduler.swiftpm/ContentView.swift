import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            CircleImage()
            
            VStack {
                Text("Hello, class!")
                    .font(.largeTitle)
                    .foregroundColor(.red)
                HStack {
                    Text("Intro to Playground").font(.body)
                    Spacer()
                    Text("Xcode").font(.subheadline)
                    Text("hello guys i am pratigya")  .font(.largeTitle)              }
            }
            
            .padding()
            
            VStack(spacing: 20) {
                Text("TITLE")
                
                HStack {
                    
                    Button("Save") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }.frame(width: 70, height:40)
                        .foregroundColor(.white)
                        .background(.blue)
                        .cornerRadius(10)
                    
                    
                    Button("Cancel") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }.frame(width: 70, height:40)
                        .foregroundColor(.white)
                        .background(.red)
                        .cornerRadius(10)
                }
            }
            
        }
    }
}


