//
//  DataTset.swift
//  swiftChatapp
//
//  Created by 水元太陽 on 2024/05/17.
//

import SwiftUI

let user1 = User(id: "1", name: "たいぽん", image: "megaRizaX")

struct DataTset: View {
    var body: some View {
        VStack{
            Text(user1.name)
            Image(user1.image)
        }
    }
}

#Preview {
    DataTset()
}
