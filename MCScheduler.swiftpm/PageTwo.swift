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
            
            @State var date = Date()
            @State var location: String = ""
            @State var reminder: String = ""
            ZStack() {
                Form {
                    TextField("Enter Your Reminder", text: $reminder)
                    TextField("Enter Location", text: $location)
                    DatePicker("Date", selection: $date)
                }
                
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
    
    struct PageTwo_Previews: PreviewProvider {
        static var previews: some View {
            PageTwo()
            }
        }
    }

