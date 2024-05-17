//
//  Chat.swift
//  swiftChatapp
//
//  Created by 水元太陽 on 2024/05/17.
//

import Foundation

struct Chat: Decodable, Identifiable{
    let id: String
    let messages: [Message]
    
    var recentMessageText: String{
        guard let recentMessage = self.messages.last else{return ""}
        return recentMessage.text
    }
}
