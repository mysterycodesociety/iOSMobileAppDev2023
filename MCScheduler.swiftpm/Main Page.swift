//
//  Main Page.swift
//  MCScheduler
//
//  Created by Student on 9/30/23.
//

import SwiftUI


struct MainPage: View {
    var body: some View{
        ZStack {
            Form {
                TextField("Type your Reminder", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                DatePicker(selection: .constant(Date()), label: {Text("Date")})
                           }
            HStack {
                Button("Save") {
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
            }
            
        }
    }
}

struct MainView_Preview: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}

