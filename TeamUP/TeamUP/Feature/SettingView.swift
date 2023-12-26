//
//  SettingView.swift
//  TeamUP
//
//  Created by 박근경 on 2023/12/23.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        titlebar()
        profile(name:"은서우", major: "지능기전공학부")
        Spacer()
            
        
    }
}

struct titlebar: View {
    var body: some View {
        VStack {
            Text("설정")
                .font(.pretendard(.Bold, size: 20))
            Rectangle()
                .fill(.black)
                .frame(height: 2)
        }
        .ignoresSafeArea()
        .frame(height: 39)
    }
}

struct profile: View {
    let name: String
    let major: String
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.customGray01)
                .frame(height: 168)
                .padding(EdgeInsets(top: 7, leading: 9, bottom: 9, trailing: 9))
            HStack {
                Image("profile")
                    .resizable()
                    .frame(width: 70, height: 70)
                    .offset(CGSize(width: 23.0, height: -36.0))
                VStack(alignment: .leading) {
                    Text(name)
                        .font(.pretendard(.Bold, size: 20))
                        .padding(.bottom, 0.5)
                    Text(major)
                        .font(.pretendard(.Light, size: 14))
                        .foregroundColor(Color.gray02)
                }
                .offset(CGSize(width: 23.0, height: -36.0))
                Spacer()
            }
        }
    }
}
#Preview {
    SettingView()
}
