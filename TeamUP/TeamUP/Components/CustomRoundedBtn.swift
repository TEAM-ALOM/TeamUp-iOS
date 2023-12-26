//
//  CustomRoundedBtn.swift
//  TeamUP
//
//  Created by 은서우 on 2023/12/26.
//

import SwiftUI

struct CustomRoundedBtn: View {
    
    var text: String
    
    init(
        text: String = "text"
    ) {
        self.text = text
    }
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.MainColor)
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
