import Foundation

let git = GitService()
let currentTag = try git.currentTag()
let previousTag = try git.previousTag()
print(currentTag)
print(previousTag)
