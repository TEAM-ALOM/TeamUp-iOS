//
//  Font+Extension.swift
//  TeamUP
//
//  Created by 은서우 on 2023/11/25.
//

import SwiftUI

enum pretendard {
    case Thin, ExtraLight, Light, 
         Regular, Medium, SemiBold,
         Bold, ExtraBold, Black
    
    var name: String {
        switch self {
        case .Thin:
            return "Pretendard-Thin"
        case .ExtraLight:
            return "Pretendard-ExtraLight"
        case .Light:
            return "Pretendard-Light"
        case .Regular:
            return "Pretendard-Regular"
        case .Medium:
            return "Pretendard-Medium"
        case .SemiBold:
            return "Pretendard-SemiBold"
        case .Bold:
            return "Pretendard-Bold"
        case .ExtraBold:
            return "Pretendard-ExtraBold"
        case .Black:
            return "Pretendard-Black"
        }
    }
}

extension Font {
    static func pretendard(_ style: pretendard, size: CGFloat) -> Font {
        return Font.custom(style.name, size: size)
    }
}
