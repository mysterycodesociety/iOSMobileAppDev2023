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
                    Text("This a new Text Field that I made 9/23.")
                }
            }
            .padding()
        }
    }
}
