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
    @Published var description: String
    
    init(
        title: String = "",
        time: Date = Date(),
        day: Date = Date(),
        description: String = ""
    ) {
        self.title = title
        self.time = time
        self.day = day
        self.description = description
    }
}
