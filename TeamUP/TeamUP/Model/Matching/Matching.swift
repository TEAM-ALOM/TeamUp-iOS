//
//  Match.swift
//  TeamUP
//
//  Created by 은서우 on 2023/12/07.
//

import Foundation

struct Matching: Hashable {
    var title: String
    var date: Date
    var time: Date
    var location: String
    var sportsType: SportsType
    var participants: Int
    var id = UUID()
    
    
    // 시간 가공하기
    var convertedDayAndTime: String {
        String("\(time.formattedDay) - \(time.formattedTime)시간 전")
    }
}

enum SportsType: String {
    case soccer = "축구"
    case baseball = "야구"
    case basketball = "농구"
    case eSports = "E-sports"
    case etc = "기타"
}

//struct Participant: Hashable {
//    var name: String //이름
//    var age: Int //나이
//    var major: String //전공
//    // 참가자 정보 속성들...
//}
