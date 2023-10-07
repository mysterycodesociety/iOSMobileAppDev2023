import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                CircleImage()
                
                VStack {
                    NavigationLink(destination: MainPage()){
                                            Text("Next").frame(width:300, height:150, alignment: .center).background(Color.black).foregroundColor(Color.white).cornerRadius(50)
                                                        }
                }
                
            }
        }
       
    }
}
func nextPage() {
    NavigationLink(destination: MainPage()){
                                            Text("Next")//.frame(width:300, height:150, alignment: .center).background(Color.black).foregroundColor(Color.white).cornerRadius(50)
                                        }
}


/* Button("Save") {
    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
}
.foregroundColor(Color.white)
.padding()
.background(Color.blue)
.cornerRadius(10)

Button("Cancel") {
    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
}
.foregroundColor(Color.white)
.padding()
.background(Color.red)
.cornerRadius(10)
*/

/*import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            CircleImage()
            
            VStack {
                Text("MCS Scheduler App")
                /*
                Add App Name
                 New Page with
                 - TextField
                 - SaveButton
                 - Ignore/Cancel button
                 */
                HStack {
                    Button("Next") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .foregroundColor(Color.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
                    
                    }
                }
               
            }
            .padding()
        }
    }
*/
