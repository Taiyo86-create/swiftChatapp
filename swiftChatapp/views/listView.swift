//
//  listView.swift
//  swiftChatapp
//
//  Created by 水元太陽 on 2024/05/17.
//

import SwiftUI

struct listView: View {
    
    @ObservedObject var vm: ChatViewModel = ChatViewModel()
    
    var body: some View {
        NavigationView{
        VStack{
            header
            list
        }
        .padding(.horizontal)
    }
        
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
                ForEach(vm.chatData){chat in
                    NavigationLink {
                        chatView(chat: chat)
                            .environmentObject(vm)
                            .toolbar(.hidden)
                    } label: {
                        listRow(chat: chat)
                    }
                }
              }
        }
    }
    
    private func listRow(chat: Chat) -> some View {
        HStack{
            let images = vm.getImages(messages: chat.messages)
            HStack(spacing: -26){
                ForEach(images, id: \.self){ image in
                    Image(image)
                        .resizable()
                        .frame(width: 48, height: 48)
                        .clipShape(Circle())
                        .background(
                           Circle()
                            .foregroundColor(Color(uiColor: .systemBackground))
                            .frame(width: 54, height: 54)
                        )
                }
            }

            VStack(alignment: .leading){
                Text(vm.getTitle(messages: chat.messages))
                    .lineLimit(1)
                    .foregroundColor(.primary)
                Text(chat.recentMessageText)
                    .font(.footnote)
                    .lineLimit(1)
                    .foregroundColor(Color(uiColor: .secondaryLabel))
            }
            Spacer()
            Text(chat.recentMessageDateString)
                .font(.caption)
                .foregroundColor(Color(uiColor: .secondaryLabel))
        }
    }
}
