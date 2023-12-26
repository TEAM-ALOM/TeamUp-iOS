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
    @Published var place: String
    @Published var sportsType: String
    @Published var size: Int
    @Published var description: String
    
    init(
        title: String = "",
        time: Date = Date(),
        day: Date = Date(),
        place: String = "",
        sprotsType: String = "",
        size: Int = Int(),
        description: String = ""
    ) {
        self.title = title
        self.time = time
        self.day = day
        self.place = place
        self.sportsType = sprotsType
        self.size = size
        self.description = description
    }
}
