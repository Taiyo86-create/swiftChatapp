//
//  Message.swift
//  swiftChatapp
//
//  Created by 水元太陽 on 2024/05/17.
//

import Foundation

struct Message: Decodable, Identifiable, Equatable{
    static func == (lhs: Message, rhs: Message) -> Bool {
        return lhs.id == rhs.id
    }
    
    let id: String
    let text: String
    let user: User
    let date: String
    let readed: Bool
}
