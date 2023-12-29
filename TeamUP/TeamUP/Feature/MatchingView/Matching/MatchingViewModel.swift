//
//  MatchingViewModel.swift
//  TeamUP
//
//  Created by 은서우 on 2023/12/07.
//

import Foundation

class MatchingViewModel: ObservableObject {
    @Published var title: String
    @Published var time: Date
    @Published var day: Date
    @Published var location: String
    @Published var sportsType: SportsType
    @Published var size: Int
    @Published var description: String
    
    init(
        title: String = "한강 달릴 사람 구해용",
        time: Date = Date(),
        day: Date = Date(),
        location: String = "뚝섬유원지역",
        sportsType: SportsType = .etc,
        size: Int = Int(),
        description: String = ""
    ) {
        self.title = title
        self.time = time
        self.day = day
        self.location = location
        self.sportsType = sportsType
        self.size = size
        self.description = description
    }
}
