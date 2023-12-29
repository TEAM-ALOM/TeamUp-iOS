//
//  Match.swift
//  TeamUP
//
//  Created by 은서우 on 2023/12/07.
//

import Foundation

struct Matching: Hashable {
    var title: String
    var time: Date
    var location: String
    var sportsType: SportsType
    var participants: Int
    var id = UUID()
}

enum SportsType: String {
    case soccer = "축구"
    case baseball = "야구"
    case basketball = "농구"
    case eSports = "E-sports"
    case etc = "기타"
}

//struct Participant: Hashable {
//    var name: String
//    var age: Int
//    // 참가자 정보 속성들...
//}
