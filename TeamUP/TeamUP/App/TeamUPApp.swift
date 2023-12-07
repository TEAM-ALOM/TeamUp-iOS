//
//  TeamUPApp.swift
//  TeamUP
//
//  Created by 은서우 on 2023/11/23.
//

import SwiftUI

@main
struct TeamUPApp: App {
    var body: some Scene {
        WindowGroup {
            MatchingListView()
                .environmentObject(MatchingListViewModel())
                .environmentObject(PathModel())
        }
    }
}
