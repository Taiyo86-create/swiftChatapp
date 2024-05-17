//
//  MessageRow.swift
//  swiftChatapp
//
//  Created by 水元太陽 on 2024/05/17.
//

import SwiftUI

struct MessageRow: View {
    var body: some View {
        HStack{
            Circle()
                .frame(width: 60, height: 60)
            Capsule()
                .frame(height: 60)
        }
        .padding(.bottom)
    }
}

#Preview {
    MessageRow()
}
