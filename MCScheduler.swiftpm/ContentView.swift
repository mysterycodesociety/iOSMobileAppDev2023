import SwiftUI

struct ContentView: View {
    @State private var isActive = false;
    @State private var size = 0.8;
    @State private var opacity = 0.5;
    var body: some View {
        if(isActive){
            MainPage();
        }
        else{
            VStack {
                VStack {
                    Image("reminderAppLogo").resizable().aspectRatio(contentMode: .fit).frame(width: 100)
                    Text("Remind Me!").font(.largeTitle.bold());
                    /*
                     Add app name
                     new page with:
                        - TextField
                        - SaveButton
                        - Ignore/cancel button
                     */
                    }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeIn(duration: 1.2)){
                        self.size = 0.9;
                        self.opacity = 1.0;
                    }
                }
                }
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 4.0){
                        withAnimation{
                            self.isActive = true;
                        }
                        
                    }
                }
        }
        
        }
        
    }


