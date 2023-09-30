//
//  Page 2.swift
//  MCScheduler
//
//  Created by Student on 9/30/23.
//

import SwiftUI

struct Page_2: View {
    var body: some View {
        
    }
    
    ZStack() {
        Form {
        TextField("Enter Your Reminder", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
            DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ })
    }
}

struct Page_2_Previews: PreviewProvider {
    static var previews: some View {
        Page_2()
   }
}
