//
//  ContentView.swift
//  SmileApp
//
//  Created by Ataru Nakano on 2021/08/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image(systemName:"speaker.fill")
            .resizable()
            .foregroundColor(/*@START_MENU_TOKEN@*/.gray/*@END_MENU_TOKEN@*/)
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .scaledToFit()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
