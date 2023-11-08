// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "swift-release",
    platforms: [
        .macOS(.v12)
    ],
    products: [
        .executable(
            name: "SwiftRelease",
            targets: ["SwiftRelease"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/JohnSundell/ShellOut",
            from: "2.3.0"
        )
    ],
    targets: [
        .target(
            name: "SwiftRelease",
            dependencies: ["ShellOut"],
            path: "code"
        )
    ]
)

