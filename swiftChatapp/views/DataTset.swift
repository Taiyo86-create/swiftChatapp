//
//  DataTset.swift
//  swiftChatapp
//
//  Created by 水元太陽 on 2024/05/17.
//

import SwiftUI

let user1 = User(id: "1", name: "たいぽん", image: "megaRizaX")

let message1 = Message(
    text: "初投稿!",
    user: User(id: "1", name: "たいぽん", image: "megaRizaX"),
    date: Date(),
    readed: false)

struct DataTset: View {
    var body: some View {
        VStack{
            Text(user1.name)
            Image(user1.image)
            
            Text(message1.text)
            Text(message1.user.name)
        }
    }
}

#Preview {
    DataTset()
}
