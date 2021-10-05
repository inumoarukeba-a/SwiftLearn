//
//  ContentView.swift
//  MyFirst
//
//  Created by Ataru Nakano on 2021/09/11.
//

import SwiftUI

struct ContentView: View {
    @State var outputText = "Hello, World!";
    
    var body: some View {
        VStack {
            Text(outputText)
                .font(.largeTitle)
                .foregroundColor(Color.red)
                .padding()
            Button(action: {
                outputText = "Hi, Swift!"
                print("デバッグテスト")
                print(outputText)
            }) {
                /*@START_MENU_TOKEN@*/Text("切り替え")/*@END_MENU_TOKEN@*/
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
