//
//  Date+Extension.swift
//  TeamUP
//
//  Created by 은서우 on 2023/12/07.
//

import Foundation

extension Date {
    var formattedTime: String {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "ko_KR")
        formatter.dateFormat = "a hh:mm"
        return formatter.string(from: self)
    }
}
