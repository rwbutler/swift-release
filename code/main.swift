import Foundation

let environment = ProcessInfo.processInfo.environment
print(environment)
print("-----")
let args = ProcessInfo.processInfo.arguments
print(args)
print("-----")
let versionReplacement = DefaultVersionReplacementService(versionControl: GitService())
try versionReplacement.main()
