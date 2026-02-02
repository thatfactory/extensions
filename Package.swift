// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "Extensions",
    platforms: [
        .iOS(.v18),
        .macOS(.v15)
    ],
    products: [
        .library(
            name: "Extensions",
            targets: ["Extensions"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/swiftlang/swift-docc-plugin", from: "1.4.5")
    ],
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
