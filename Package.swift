// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "Extensions",
    platforms: [
        .iOS(.v18),
        .macOS(.v13)
    ],
    products: [
        .library(
            name: "Extensions",
            targets: ["Extensions"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Extensions",
            dependencies: []
        ),
        .testTarget(
            name: "ExtensionsTests",
            dependencies: ["Extensions"]
        )
    ]
)
