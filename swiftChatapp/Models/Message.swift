//
//  Message.swift
//  swiftChatapp
//
//  Created by 水元太陽 on 2024/05/17.
//

import Foundation

struct Message{
    let id: String = UUID().uuidString
    let text: String
    let user: User
    let date: Date
    let readed: Bool
}
