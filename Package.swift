// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "VaporClean",
    products: [
        .library(name: "App", targets: ["App"]),
        .executable(name: "Run", targets: ["Run"])
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", .upToNextMajor(from: "2.1.0"))
    ],
    targets: [
        .target(
            name: "App",
            dependencies: ["Vapor"],
            exclude: ["Config", "Public", "Resources"]
        ),
        .target(name: "Run", dependencies: ["App"])
    ]
)

