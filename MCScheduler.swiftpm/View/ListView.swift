//
//  ListView.swift
//  MCScheduler
//
//  Created by Student on 10/21/23.
//

import SwiftUI

struct ListView: View{
    
    @State var items:[ItemModel] = [
        ItemModel(title: "First Title!", isCompleted: false),
        ItemModel(title: "Second Title!", isCompleted: true),
        ItemModel(title: "Third Title!", isCompleted: false),
    ]
    
    var body: some View {
        List {
            ForEach(items) {items in
                ListRowView(title: "This is the first title!")
                //ListRowView(title: items)
            }
        }
        .listStyle (PlainListStyle() )
        .navigationTitle("Todo List 📝")
        .navigationBarItems ( leading: EditButton() , trailing:
                                NavigationLink("Add", destination:
                                Text ("Destination'"))
        )
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ListView()
        }
    }
}

struct ExtractedView: View {
    var body: some View {
        HStack {
            Image(systemName: "checkmark.circle")
            Text("First Item!")
            Spacer()
        }
    }
}
