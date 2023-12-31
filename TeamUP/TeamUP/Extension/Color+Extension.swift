//
//  File.swift
//  TeamUP
//
//  Created by 은서우 on 2023/11/25.
//

import SwiftUI

extension Color {
    static let MainColor = Color("MainColor")
    static let SubColor = Color("SubColor")
    static let customCoral = Color("Coral")
    static let customDarkBlue = Color("DarkBlue")
    static let customSkyblue = Color("Skyblue")
    static let customGray01 = Color("Gray01")
    static let customGray02 = Color("Gray02")
    static let LogoColor = Color("LogoColor")
    
    static let customBackgroundColor = LinearGradient(
            gradient: Gradient(colors: [Color.white, Color.customSkyblue]),
            startPoint: .top,
            endPoint: .bottom
        )
    static let customCreateMatchingBtnColor = LinearGradient(
        gradient: Gradient(colors: [Color.MainColor, Color.customDarkBlue]),
        startPoint: .top,
        endPoint: .bottom
        )
}
