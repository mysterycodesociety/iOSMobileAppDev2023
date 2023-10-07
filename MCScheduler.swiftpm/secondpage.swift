//
//  secondpage.swift
//  MCScheduler
//
//  Created by Student on 9/30/23.
//

import SwiftUI
struct secondpage: View {
    var body: some View{
        
        @State var date = Date()
        @State var reminder: String = ""
        @State var location: String = ""
        
        ZStack {
            Form {
            
                TextField("Enter your reminder", text: $reminder)
                TextField("Location", text: $location)
                DatePicker("Date", selection: $date)
            }
            VStack(spacing: 20) {
               
                
                HStack {
                    
                    Button("Save") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }.frame(width: 70, height:40)
                        .foregroundColor(.white)
                        .background(.blue)
                        .cornerRadius(10)
                        .padding()
                    
                    Button("Cancel") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }.frame(width: 70, height:40)
                        .foregroundColor(.white)
                        .background(.red)
                        .cornerRadius(10)
                }
            }
        }
    }
}
    

struct secondpage_Previews: PreviewProvider {
    static var previews: some View {
        secondpage()
    }
}
