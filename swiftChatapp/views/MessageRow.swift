//
//  MessageRow.swift
//  swiftChatapp
//
//  Created by 水元太陽 on 2024/05/17.
//

import SwiftUI

struct MessageRow: View {
    
    let message: Message
    
    var body: some View {
        HStack(alignment: .top){
            userTumb
            messageText
            messageState
            Spacer()
            
        }
        .padding(.bottom)
    }
    
}

//#Preview {
//    MessageRow()
//        .background(.cyan)
//}


extension MessageRow {
    private var userTumb: some View{
        Image(message.user.image)
            .resizable()
            .frame(width: 48, height: 48)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
    }
    
    private var messageText: some View{
        Text("こんにちは こんにちは こんにちは こんにちは こんにちは こんにちは こんにちは")
            .padding()
            .background(.white)
            .cornerRadius(30)
    }
    
    private var messageState: some View{
        VStack(alignment: .trailing){
            Spacer()
            Text("既読")
            Text(timeStamp)
        }
        .foregroundColor(.secondary)
        .font(.footnote)
    }
    
    private var timeStamp: String{
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        return formatter.string(from: Date())
    }
}
