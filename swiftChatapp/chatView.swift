//
//  chatView.swift
//  swiftChatapp
//
//  Created by 水元太陽 on 2024/05/16.
//

import SwiftUI

struct chatView: View {
    @State private var textFieldText: String = ""
    var body: some View {
        VStack(spacing: 0){
               messageArea
                .overlay(navigationArea ,alignment: .top)
               inputArea
        }
    }
}

#Preview {
    chatView()
}

extension chatView{
    
    
    private var messageArea: some View{
        ScrollView{
            VStack(spacing: 0){
                ForEach(0..<5){ _ in
                    MessageRow()
                    
                }
            }
            .padding(.horizontal)
            .padding(.top, 72 )
            
        }.background(.cyan)
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

            Image(systemName: "mic")
                .font(.title2)
        }.background(.white)
            .padding()
    }
    
    private var navigationArea: some View{
        HStack{
            Image(systemName: "chevron.backward")
                .font(.title2)
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
            .background(.cyan.opacity(0.9))
    }
}
