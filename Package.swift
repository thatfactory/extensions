// swift-tools-version:6.4

import PackageDescription

let package = Package(
    name: "Extensions",
    platforms: [
        .iOS(.v27),
        .macOS(.v27)
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
