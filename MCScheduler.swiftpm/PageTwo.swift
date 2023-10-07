//
//  Page 2.swift
//  MCScheduler
//
//  Created by Student on 9/30/23.
//

import SwiftUI

struct PageTwo: View {
    var body: some View {
        
        @State var date = Date()
        @State var location: String = ""
        @State var reminder: String = ""
        ZStack() {
            Form {
                TextField("", text: $reminder)
                TextField("", text: $location)
                DatePicker("Date", selection: $date)
            }
            
            VStack {
                Button("Save") {
                }
                .frame(width: 81, height: 30)
                .font(.title)
                .foregroundColor(Color.red)
                .background(Color.purple)
                .cornerRadius(10)
                .padding()
                }
            
        }
    }
}

struct PageTwo_Previews: PreviewProvider {
    static var previews: some View {
        PageTwo()
    }
}

