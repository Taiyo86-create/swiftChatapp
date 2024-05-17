//
//  MessageRow.swift
//  swiftChatapp
//
//  Created by 水元太陽 on 2024/05/17.
//

import SwiftUI

struct MessageRow: View {
    var body: some View {
        HStack(alignment: .top){
            Image(systemName: "person.circle")
                .resizable()
                .frame(width: 48, height: 48)
            Text("こんにちは こんにちは こんにちは こんにちは こんにちは こんにちは こんにちは")
                .padding()
                .background(.white)
                .cornerRadius(30)
            VStack(alignment: .trailing){
                Spacer()
                Text("既読")
                Text(timeStamp)
            }
            .foregroundColor(.secondary)
            .font(.footnote)
            Spacer()
            
        }
        .padding(.bottom)
    }
    private var timeStamp: String{
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        return formatter.string(from: Date())
    }
}

#Preview {
    MessageRow()
        .background(.cyan)
}
