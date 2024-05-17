//
//  chatView.swift
//  swiftChatapp
//
//  Created by 水元太陽 on 2024/05/16.
//

import SwiftUI

struct chatView: View {
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
                ForEach(0..<30){ _ in
                    HStack{
                        Circle()
                            .frame(width: 60, height: 60)
                        Capsule()
                            .frame(height: 60)
                    }
                    .padding(.bottom)
                }
            }
            .padding(.horizontal)
            .padding(.top, 72 )
            
        }.background(.cyan)
    }
    
    private var inputArea: some View{
        HStack{
            Circle()
                .frame(width: 40, height: 40)
            Circle()
                .frame(width: 40, height: 40)
            Circle()
                .frame(width: 40, height: 40)
            Capsule()
                .frame(height: 40)
            Circle()
                .frame(width: 40, height: 40)
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
