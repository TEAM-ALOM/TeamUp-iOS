//
//  Path.swift
//  TeamUP
//
//  Created by 은서우 on 2023/12/07.
//

import Foundation

class PathModel: ObservableObject {
    @Published var paths: [PathType]
    
    init(paths: [PathType] = []) {
        self.paths = paths
    }
}
