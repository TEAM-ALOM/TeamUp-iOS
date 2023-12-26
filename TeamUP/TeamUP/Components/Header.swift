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
        ZStack() {
            Rectangle()
                .fill(.white.shadow(.drop(color: Color(hue: 0.035, saturation: 0.0, brightness: 0.0, opacity: 0.1), radius: 10, x:0, y:2)))
                .shadow(color:Color(hue: 0.035, saturation: 0.0, brightness: 0.0, opacity: 0.1), radius: 1, y:2)
                .frame( height: 99)
                
                
                
            HStack() {
                Image("arrow")
                    .resizable()
                    .offset(y:25)
                    .frame(width: 45, height: 45)
                Spacer()
            }
            Text(title)
                .font(.pretendard(.Medium, size: 24))
                .offset(y:22)
        }
        .ignoresSafeArea()
        Spacer()
    }
}
#Preview {
    Header(title: "text")
}
