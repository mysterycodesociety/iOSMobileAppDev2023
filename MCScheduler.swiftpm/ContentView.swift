import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                CircleImage()
                
                VStack {
                    NavigationLink(destination: MainPage().navigationBarBackButtonHidden(true)){
                                            Text("Next").frame(width:100, height:75, alignment: .center).background(Color.black).foregroundColor(Color.white).cornerRadius(99)
                    }.navigationBarBackButtonHidden(true)
                }
                
            }
        }
       
    }
}
