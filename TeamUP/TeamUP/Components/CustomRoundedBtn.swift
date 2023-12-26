//
//  CustomRoundedBtn.swift
//  TeamUP
//
//  Created by 은서우 on 2023/12/26.
//

import SwiftUI

struct CustomRoundedBtn: View {
    
    var text: String
    let isActive: Bool
    
    init(
        text: String = "text",
        isActive: Bool = true
    ) {
        self.isActive = isActive
        self.text = text
    }
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(isActive ? Color.MainColor : Color.customGray01)
                .frame(width: 330, height: 60)
                .cornerRadius(20)
                .shadow(color: .black.opacity(0.25), radius: 5, x: 0, y: 2)
            
            Text(text)
                .font(.pretendard(.Medium, size: 20))
                .foregroundColor(.white)
        }
    }
}

struct CustomRounededBtn_Previews: PreviewProvider {
    static var previews: some View {
        CustomRoundedBtn()
            .previewLayout(.sizeThatFits)
            .padding()

    }
}
