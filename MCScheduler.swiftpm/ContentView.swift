import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            CircleImage()
            VStack {
                Text("MCS Schedule!")
                    .font(.largeTitle)
                    .foregroundColor(.red)
                HStack {
                    Text("Your Daily Assistant").font(.title2).frame(maxWidth: .infinity).multilineTextAlignment(.center).lineLimit(nil).padding(0.0)
                    Spacer()

                }
            }
            .padding()
        }
        HStack {
            Spacer().frame(width:0, height: 36.0, alignment: .leading)
            Button(action: {
              print("Button pressed")
            }, label: {
                Text("Next").frame(width: 150, height: 80, alignment: .center)
                  .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(40)
                .font(.title)
                .padding()
            })
            
            
        }
    }
        
}
