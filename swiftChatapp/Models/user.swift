//
//  user.swift
//  swiftChatapp
//
//  Created by 水元太陽 on 2024/05/17.
//

import Foundation

struct User: Decodable{
    let id: String
    let name: String
    let image :String
    
    var isCurrentUser: Bool{
        self.id == User.currentUser.id
    }
    
    static var currentUser: User {
        User(id: "1", name: "カーキ", image: "user01")
    }
}
