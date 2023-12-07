//
//  MatchingListViewModel.swift
//  TeamUP
//
//  Created by 은서우 on 2023/12/07.
//

import Foundation

class MatchingListViewModel: ObservableObject {
    @Published var matchings: [Matching]
    
    init(
        matchings: [Matching] = []
    ) {
        self.matchings = matchings
    }
}

extension MatchingListViewModel {
    func addMatching(_ matching: Matching) {
        matchings.append(matching)
    }
}
