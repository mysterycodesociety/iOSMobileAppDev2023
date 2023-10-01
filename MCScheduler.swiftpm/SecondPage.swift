//
//  SecondPage.swift
//  MCScheduler
//
//  Created by Nick Nalli on 9/30/23.
//

import SwiftUI
struct SecondPage: View {
    var body: some View {
        ZStack {
        Form {
            TextField("Enter your reminder", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
            TextField("Your Location", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
            DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ })
        }.padding(10)
            HStack {
                Button("Save") {
                  // some code
                }
                .frame(width: 84, height: 30)
                .font(.body)
                .foregroundColor(Color.white)
                .background(Color.purple)
                .cornerRadius(10).padding()
                
                Button("Cancel") {
                  // some code
                    GoBack()
                }
                .frame(width: 80, height: 30)
                .font(.body)
                .foregroundColor(Color.white)
                .background(Color.purple)
                .cornerRadius(10)
            }
            .buttonStyle(.bordered)

        }
    }
}

struct SecondPage_Previews: PreviewProvider {
    static var previews: some View {
        SecondPage()
    }
}

func OpenPageTwo(){
    //        getting the all scenes
            let scenes = UIApplication.shared.connectedScenes
    //        getting windowScene from scenes
            let windowScene = scenes.first as? UIWindowScene
    //        getting window from windowScene
            let window = windowScene?.windows.first
    //        getting the root view controller
    _ = window?.rootViewController
    //        changing the root view controller
            window?.rootViewController = UIHostingController(rootView: SecondPage())
    //if let window = UIWindowScene.windows.first{
    //if let window = UIApplication.shared.windows.first{
        //window.rootViewController = UIHostingController(rootView: SecondPage())
        window?.makeKeyAndVisible()
}

func GoBack(){
    //        getting the all scenes
            let scenes = UIApplication.shared.connectedScenes
    //        getting windowScene from scenes
            let windowScene = scenes.first as? UIWindowScene
    //        getting window from windowScene
            let window = windowScene?.windows.first
    //        getting the root view controller
    _ = window?.rootViewController
    //        changing the root view controller
            window?.rootViewController = UIHostingController(rootView: ContentView())
    //if let window = UIWindowScene.windows.first{
    //if let window = UIApplication.shared.windows.first{
        //window.rootViewController = UIHostingController(rootView: SecondPage())
        window?.makeKeyAndVisible()
}
