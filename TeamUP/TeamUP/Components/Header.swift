//
//  Header.swift
//  TeamUP
//
//  Created by 박근경 on 2023/12/25.
//

import SwiftUI

struct Header : View {
    let title: String
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 393, height: 99)
                .foregroundColor(.white)
                .shadow(color: Color(hue: 1.0, saturation: 0.956, brightness: 0.001, opacity: 0.1) ,radius:0, x:0, y:2)
                .shadow(color: Color(hue: 1.0, saturation: 0.956, brightness: 0.001, opacity: 0.1) ,radius:10, x:0, y:2)
                
            
            Image("arrow")
                .resizable()
                .frame(width: 45, height: 45)
                .offset(x:-176, y:24)
            Text(title)
                .font(.pretendard(.Medium, size: 24))
                .offset(y:22)
        }
    }
}
#Preview {
    Header(title: "text")
}
