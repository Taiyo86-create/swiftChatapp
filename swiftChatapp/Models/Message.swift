//
//  Message.swift
//  swiftChatapp
//
//  Created by 水元太陽 on 2024/05/17.
//

import Foundation

struct Message: Decodable{
    let id: String
    let text: String
    let user: User
    let date: String
    let readed: Bool
}
