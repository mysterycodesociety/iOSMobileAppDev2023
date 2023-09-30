//
//  Main Page.swift
//  MCScheduler
//
//  Created by Student on 9/30/23.
//

import SwiftUI
struct MainPage: View {
    var body: some View{
        Zstack {
            Form {
                TextField("Enter your reminder", text: Value)
                DatePicker(selection: .constant(Date()), label: {Text("Date")}
                           } .padding(10)
        }
    }
}

struct MainView_Preview: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
