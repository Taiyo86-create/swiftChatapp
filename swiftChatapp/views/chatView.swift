//
//  chatView.swift
//  swiftChatapp
//
//  Created by 水元太陽 on 2024/05/16.
//

import SwiftUI

struct chatView: View {
    
    let chat: Chat
    @FocusState private var textFieldFocused: Bool
    @State private var textFieldText: String = ""
    @Environment(\.dismiss) private var dismiss
    
    @ObservedObject var vm: ChatViewModel = ChatViewModel()
    var body: some View {
        VStack(spacing: 0){
               messageArea
                .overlay(navigationArea ,alignment: .top)
               inputArea
        }
    }
}

//#Preview {
//    chatView()
//}

extension chatView{
    
    
    private var messageArea: some View{
        ScrollViewReader {proxy in
            ScrollView{
                VStack(spacing: 0){
                    ForEach(chat.messages){ message in
                        MessageRow(message: message)
                        
                    }
                }
                .padding(.horizontal)
                .padding(.top, 72 )
                
            }.background(Color("Background"))
                .onTapGesture {
                    textFieldFocused = false
                }
                .onAppear{
                    scrollToLast(proxy: proxy)
                }
        }
        
    }
    
    private var inputArea: some View{
        HStack{
            HStack{
                Image(systemName: "plus")
                Image(systemName: "camera")
                Image(systemName: "photo")
            }
            .font(.title2)
            TextField("Aa", text: $textFieldText)
                .padding()
                .background(Color(uiColor: .secondarySystemBackground))
                .clipShape(Capsule())
                .overlay(
                    Image(systemName: "face.smiling"
                        
                   )
                    .font(.title2)
                    .padding(.trailing)
                    .foregroundColor(.gray)
                , alignment: .trailing
                )
            
                .onSubmit {
                    sendMessage()
                }
                .focused($textFieldFocused)

            Image(systemName: "mic")
                .font(.title2)
        }.background(Color(uiColor: .systemBackground))
            .padding(.horizontal)
            .padding(.vertical, 8)
    }
    
    private var navigationArea: some View{
        HStack{
            Button {
                dismiss()
            } label: {
                Image(systemName: "chevron.backward")
                    .font(.title2)
                    .foregroundColor(.primary)
            }

            
            Text("Titile")
                .font(.title2.bold())
            Spacer()
            HStack(spacing: 16){
                Image(systemName: "text.magnifyingglass")
                Image(systemName: "phone")
                Image(systemName: "line.3.horizontal")
            }
            .font(.title2)
        }
            .padding()
            .background(Color("Background").opacity(0.9))
    }
    
    private func sendMessage(){
        if !textFieldText.isEmpty{
            vm.aggMessage(text: textFieldText)
            textFieldText = ""
        }
    }
    private func scrollToLast(proxy: ScrollViewProxy){
        if let lastMessage = vm.messages.last {
            proxy.scrollTo(lastMessage.id, anchor: .bottom)
        }
    }
}
