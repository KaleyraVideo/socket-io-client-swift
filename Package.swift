// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "KaleyraSocketIO",
    products: [
        .library(name: "KaleyraSocketIO", targets: ["KaleyraSocketIO"])
    ],
    dependencies: [
        .package(url: "https://github.com/KaleyraVideo/Starscream", exact: "4.0.6")
    ],
    targets: [
        .target(name: "KaleyraSocketIO",
                dependencies: [.product(name: "Starscream",
                                        package: "Starscream",
                                        moduleAliases: ["Starscream" : "KaleyraStarscream"])],
                path: "Source/SocketIO"),
        .testTarget(name: "TestSocketIO", dependencies: ["KaleyraSocketIO"]),
    ]
)
