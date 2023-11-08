//
//  GitService.swift
//
//
//  Created by Ross Butler on 08/11/2023.
//

import Foundation
import ShellOut

protocol VersionControlService {
    
}

struct GitService: VersionControlService {
    func currentTag() throws -> String? {
        try tags().last
    }
    
    func previousTag() throws -> String? {
        var allTags = try tags()
        allTags.removeLast(1)
        return allTags.last
    }
    
    private func tags() throws -> [String] {
        let output = try shellOut(to: "git", arguments: ["tag", "-l"])
        let tags = output.split(separator: "\n").map {
            String($0)
        }
        return tags
    }
}
