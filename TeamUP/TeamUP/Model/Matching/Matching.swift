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
    var participants: Int
    var id = UUID()
}

//struct Participant: Hashable {
//    var name: String
//    var age: Int
//    // 참가자 정보 속성들...
//}
