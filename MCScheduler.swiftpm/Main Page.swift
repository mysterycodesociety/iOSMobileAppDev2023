//
//  Main Page.swift
//  MCScheduler
//
//  Created by Student on 9/30/23.
//

import SwiftUI


struct MainPage: View {
    @State private var text = ""
    @State private var date = Date()
    
    @State private var Saved = false
    var body: some View{
        NavigationView {
            ZStack {
                Form {
                    TextField("Enter your reminder", text: $text)
                    DatePicker(selection: $date, label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ })
                }
                HStack {
                    Button("Save") {
                        Saved = true
                    }.frame(width:100, height:75).background(Color.blue).foregroundColor(Color.white).cornerRadius(99)
                    
                    
                    
                    NavigationLink(destination: ContentView().navigationBarBackButtonHidden(true)){
                        Text("Cancel").frame(width:100, height:75, alignment: .center).background(Color.red).foregroundColor(Color.white).cornerRadius(99)
                    }.navigationBarBackButtonHidden(true)
                }
            }
        }.alert("Saved", isPresented: $Saved) {
            
        }message: {
            Text("Your Reminder: \(text) for \(date) has been set")
        }
    }
}

struct MainView_Preview: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}

