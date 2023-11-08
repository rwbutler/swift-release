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
    func currentTag() {
        
    }
    
    private func tag() async throws -> [String] {
        let output = try shellOut(to: "git", arguments: ["tag", "-l"])
        let tags = output.split(separator: "\n").map {
            String($0)
        }
        return tags
    }
}
