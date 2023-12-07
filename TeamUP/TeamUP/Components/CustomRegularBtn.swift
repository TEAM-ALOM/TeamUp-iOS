//
//  CustomRoundedBtn.swift
//  TeamUP
//
//  Created by 은서우 on 2023/12/08.
//

import SwiftUI

struct CustomRegularBtn: View {
    
    let isActive: Bool
    var text: String
    
    init(
        isActive: Bool = true,
        text: String = "다음"
    ) {
        self.isActive = isActive
        self.text = text
    }
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(isActive ? Color.MainColor : Color.customGray01)
                .frame(width: 330, height: 60)
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.25), radius: 5, x: 0, y: 2)
            
            Text(text)
                .font(.pretendard(.Medium, size: 20))
                .foregroundColor(.white)
        }
    }
}

struct CustomRegularBtn_Previews: PreviewProvider {
    static var previews: some View {
        CustomRegularBtn()
    }
}
