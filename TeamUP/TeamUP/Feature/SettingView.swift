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
        accountlist()
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
struct accountlist: View {
    var body: some View {
        VStack {
            ZStack(alignment: .leading){
                Rectangle()
                    .fill(Color(hue: 1.0, saturation: 0.008, brightness: 0.87))
                    .frame(height: 47)
                
                Text("계정")
                    .font(.pretendard(.Medium, size: 20))
                    .padding(.leading, 30);
            }
            accountlist_mini(title: "프로필 수정")
            accountlist_mini(title: "경기 다시보기")
            accountlist_mini(title: "로그아웃")
            accountlist_mini(title: "문의하기")
            
        }
    }
}
struct accountlist_mini: View {
    let title: String
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .stroke(Color.gray01, lineWidth:1)
                .frame(height: 39)

            Text(title)
                .padding(.leading, 30)
                .font(.pretendard(.Regular, size: 16))
                .foregroundColor(Color.customGray02)
        }
        .padding(EdgeInsets(top: -5, leading: 1, bottom: 2, trailing: 1))
        
    }
}
#Preview {
    SettingView()
}
