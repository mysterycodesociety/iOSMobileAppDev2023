//
//  AddReminderSheet.swift
//  MCScheduler
//
//  Created by Student on 9/30/23.
//

import SwiftUI

struct AddReminderSheet: View{
    @Environment(\.dismiss) private var dismiss
    
    @State private var text = "";
    var body: some View{
        ZStack{
            VStack{
                Form{
                    TextField("Type your reminder", text: $text)
                    DatePicker(selection: .constant(Date()), label: {Text("Date")})
                }
                
            }
            VStack{
                HStack{
                    Button("Save") { print("Save Button Tapped!") }
                        .frame(width: 115, height: 28).foregroundColor(Color.white).background(Color.blue).cornerRadius(9).padding(4)
                    
                    Button("Cancel") { dismiss() }
                        .frame(width: 115, height: 28).foregroundColor(Color.white).background(Color.red).cornerRadius(9).padding(5)
                }
            }
        }
    }
    
}
