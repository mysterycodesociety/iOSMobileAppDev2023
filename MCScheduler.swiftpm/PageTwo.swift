//
//  Page 2.swift
//  MCScheduler
//
//  Created by Student on 9/30/23.
//

import SwiftUI

struct PageTwo: View {
    var body: some View {
        NavigationView {

                ZStack {
                    
                    Form {
                               TextField("Enter your reminder", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                               TextField("Your Location", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                               DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ })
                           }.padding(10)
                    HStack {
                        Button("Save") {
                        }
                        .frame(width: 81, height: 30)
                        .font(.title)
                        .foregroundColor(Color.white)
                        .background(Color.purple)
                        .cornerRadius(10)
                        .padding()
                        
                        NavigationLink(destination: ContentView().navigationBarBackButtonHidden(true)){
                            Text("Cancel").font(.title).frame(width:95, height:30, alignment: .center).background(Color.red).foregroundColor(Color.white).cornerRadius(10)
                        }.navigationBarBackButtonHidden(true)
                    }
                }
        }
    }
    
    struct reminderObj{
        var date = Date()
        var location: String
        var reminder: String
        
    }
    
    struct PageTwo_Previews: PreviewProvider {
        static var previews: some View {
            PageTwo()
            }
        }
    }

