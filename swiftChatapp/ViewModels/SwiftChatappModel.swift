//
//  SwiftChatappModel.swift
//  swiftChatapp
//
//  Created by 水元太陽 on 2024/05/17.
//

import Foundation

class ChatViewModel{
    
    var chatData: [Chat] = []
    var messages: [Message] = []
    
    init(){
        chatData = fetchChatData()
        messages = chatData[0].messages
        print(messages)
    }
    
    private func fetchChatData() ->[Chat] {
        let fileName = "chatData.json"
        let data: Data
        
         guard let filePath = Bundle.main.url(forResource: fileName, withExtension: nil)
        else {
             fatalError("\(fileName)見つかりません")
         }
        do{
            data = try Data(contentsOf: filePath)
        } catch {
            fatalError("\(fileName)のロードに失敗しました")
        }
        
        do{
           return try JSONDecoder().decode([Chat].self, from: data)
        } catch {
            fatalError("\(fileName)を\(Chat.self)に変換できませんでした")
        }

    }
}
