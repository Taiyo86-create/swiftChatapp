//
//  listView.swift
//  swiftChatapp
//
//  Created by 水元太陽 on 2024/05/17.
//

import SwiftUI

struct listView: View {
    var body: some View {
        VStack{
            header
            list
        }
        .padding(.horizontal)
    }
        
}

#Preview {
    listView()
}


extension listView{
    private var header: some View{
        HStack{
            Text("トーク")
                .font(.title2.bold())
            Spacer()
            
            HStack(spacing: 16){
                Image(systemName: "text.badge.checkmark")
                Image(systemName: "square")
                Image(systemName: "ellipsis.bubble")
            }
            .font(.title2)
        }
    }
    
    private  var list: some View{
        ScrollView{
            VStack{
                ForEach(0..<5){_ in
                    listRow
                }
            }
        }
    }
    
    private var listRow: some View{
        HStack{
            Circle()
                .frame(width: 60, height: 60)
            VStack(alignment: .leading){
                Text("タイトル")
                Text("最新のメッセージ")
                    .font(.footnote)
                    .foregroundColor(Color(uiColor: .secondaryLabel))
            }
            Spacer()
            Text("12/31")
                .font(.caption)
                .foregroundColor(Color(uiColor: .secondaryLabel))
        }
    }
}