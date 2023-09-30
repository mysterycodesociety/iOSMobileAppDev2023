import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            CircleImage()
            VStack {
                Text("MCS Scheduler")
                    .font(.largeTitle)
                    .foregroundColor(.red)
                HStack {
                    Text("Your Daily assistant").font(.body)
                }
                VStack {
                    Button("Next") {
                      // some code
                    }
                    .frame(width: 81, height: 30)
                    .font(.title)
                    .foregroundColor(Color.white)
                    .background(Color.purple)
                    .cornerRadius(10)
                }
                .buttonStyle(.bordered)
            }
            .padding()
        }
    }
}
