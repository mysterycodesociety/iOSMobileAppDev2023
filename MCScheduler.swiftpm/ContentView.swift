import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            CircleImage()
            
            VStack {
                Text("Remind Me!").font(.largeTitle.bold())
                Button("Start") { //go to main page of the app
                }
                .padding(.top, 4.0).font(.largeTitle)
                /*
                 Add app name
                 new page with:
                    - TextField
                    - SaveButton
                    - Ignore/cancel button
                 */
                }
            }
            .padding()
        }
    }

