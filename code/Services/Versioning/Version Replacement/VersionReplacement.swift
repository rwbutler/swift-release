//
//  VersionReplacementService.swift
//
//
//  Created by Ross Butler on 08/11/2023.
//

import Foundation

protocol VersionReplacementService {
    
}

struct DefaultVersionReplacementService: VersionReplacementService {
    private let versionControl: GitService
    
    init(versionControl: GitService) {
        self.versionControl = versionControl
    }
    
    func main() throws {
        guard let currentTag = try versionControl.currentTag(),
              let previousTag = try versionControl.previousTag() else {
            return
        }
        print(currentTag)
        print(previousTag)
    }
}
