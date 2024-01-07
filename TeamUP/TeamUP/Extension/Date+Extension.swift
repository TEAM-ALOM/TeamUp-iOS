//
//  Date+Extension.swift
//  TeamUP
//
//  Created by 은서우 on 2023/12/07.
//
// 필요한 시간 데이터

// 1. 매칭글 올린 시간
// 2. 경기 시작시간
// 3. 경기 종료시간
// 4. 매칭글 마감 시간 - 현재시간


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
        return "진행 중"
      } else {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "ko_KR")
        formatter.dateFormat = "M월 d일 E요일"
        return formatter.string(from: self)
      }
    }
}
