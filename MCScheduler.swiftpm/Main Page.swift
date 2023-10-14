//
//  Main Page.swift
//  MCScheduler
//
//  Created by Student on 9/30/23.
//

import SwiftUI


struct MainPage: View {
    var body: some View{
        NavigationView {
            ZStack {
                Form {
                    TextField("Enter your reminder", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ })
                }
                HStack {
                    NavigationLink(destination: MainPage()){
                        Text("Save").frame(width:100, height:75, alignment: .center).background(Color.blue).foregroundColor(Color.white).cornerRadius(99)
                    }
                    NavigationLink(destination: ContentView()){
                        Text("Cancel").frame(width:100, height:75, alignment: .center).background(Color.red).foregroundColor(Color.white).cornerRadius(99)
                    }
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

