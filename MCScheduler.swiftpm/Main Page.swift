//
//  Main Page.swift
//  MCScheduler
//
//  Created by Student on 9/30/23.
//

import SwiftUI


struct MainPage: View {
    @State private var text = ""
    var body: some View{
        NavigationView {
            ZStack {
                Form {
                    TextField("Enter your reminder", text: $text)
                    DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ })
                }
                HStack {
                    NavigationLink(destination: MainPage().navigationBarBackButtonHidden(true)){
                        Text("Save").frame(width:100, height:75, alignment: .center).background(Color.blue).foregroundColor(Color.white).cornerRadius(99)
                    }.navigationBarBackButtonHidden(true)
                    
                    NavigationLink(destination: ContentView().navigationBarBackButtonHidden(true)){
                        Text("Cancel").frame(width:100, height:75, alignment: .center).background(Color.red).foregroundColor(Color.white).cornerRadius(99)
                    }.navigationBarBackButtonHidden(true)
                }
            }
        }
    }
}

struct MainView_Preview: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}

