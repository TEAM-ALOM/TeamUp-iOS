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
        formatter.dateFormat = "a hh:mm" // 오전/오후 시간:분
        return formatter.string(from: self)
    }
    
    var formattedDay: String {
      let now = Date()
      let calendar = Calendar.current
      
      let nowStartOfDay = calendar.startOfDay(for: now)
      let dateStartOfday = calendar.startOfDay(for: self)
      let numOfDifference = calendar.dateComponents([.day], from: nowStartOfDay, to: dateStartOfday).day!
      
      if numOfDifference == 0 {
        return "오늘"
      } else {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "ko_KR")
        formatter.dateFormat = "M월 d일 E요일"
        return formatter.string(from: self)
      }
    }
}
