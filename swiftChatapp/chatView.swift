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
                .overlay(
                    HStack{
                        Circle()
                            .frame(width: 40, height: 40)
                        Text("Titile")
                        Spacer()
                        Circle()
                            .frame(width: 40, height: 40)
                        Circle()
                            .frame(width: 40, height: 40)
                    }.foregroundColor(.white)
                        .padding()
                        .background(.black.opacity(0.5))
                        ,alignment: .top
                )
            
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
    }
}

#Preview {
    chatView()
}
