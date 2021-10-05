//
//  ContentView.swift
//  MyJanken
//
//  Created by Ataru Nakano on 2021/09/13.
//

import SwiftUI

struct ContentView: View {
    @State var answerNumber = 0
    var body: some View {
        VStack {
            Spacer()
            if(answerNumber == 0) {
                Text("じゃんけんをします")
                    .padding(.bottom, 80.0)
            } else if answerNumber == 1 {
                // グー
                Image("gu")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fit/*@END_MENU_TOKEN@*/)
                Text("グー")
                    .padding(.bottom, 80.0)
            } else if answerNumber == 2 {
                // チョキ
                Image("choki")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fit/*@END_MENU_TOKEN@*/)
                Text("チョキ")
                    .padding(.bottom, 80.0)
            } else {
                // パー
                Image("pa")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fit/*@END_MENU_TOKEN@*/)
                Text("パー")
                    .padding(.bottom, 80.0)
            }
            
            Button(action: {
                // ランダムの結果を格納
                var newAnswerNumber = 0
                // 前回と同じ結果にならないようランダムを繰り返す
                repeat {
                    newAnswerNumber = Int.random(in: 1...3)
                    print(newAnswerNumber)
                } while answerNumber == newAnswerNumber
                // @Stateにランダムの結果を格納
                answerNumber = newAnswerNumber
            }) {
                Text("じゃんけんをする")
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
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
