import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
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
                        NavigationLink(destination: PageTwo().navigationBarBackButtonHidden(true)){
                            Text("Next").frame(width:80, height:30, alignment: .center).background(Color.purple).foregroundColor(Color.white).cornerRadius(10)
                        }.navigationBarBackButtonHidden(true)
                            // some code
                        
                    }
                    .buttonStyle(.bordered)
                }
                .padding()
            }
        }
    }
}
