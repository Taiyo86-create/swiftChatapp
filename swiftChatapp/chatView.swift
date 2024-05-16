//
//  chatView.swift
//  swiftChatapp
//
//  Created by 水元太陽 on 2024/05/16.
//

import SwiftUI

struct chatView: View {
    var body: some View {
        VStack{
            ScrollView{
                VStack{
                    HStack{
                        Circle()
                            .frame(width: 60, height: 60)
                        Capsule()
                            .frame(height: 60)
                    }
                }
            }.background(.cyan)
        }
    }
}

#Preview {
    chatView()
}
