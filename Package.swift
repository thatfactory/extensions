// swift-tools-version:6.4

import PackageDescription

let strictSwiftSettings: [SwiftSetting] = [
    .treatAllWarnings(as: .error),
    .enableUpcomingFeature("ExistentialAny"),
    .enableUpcomingFeature("InferIsolatedConformances"),
    .enableUpcomingFeature("InternalImportsByDefault"),
    .enableUpcomingFeature("MemberImportVisibility"),
    .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
]

let package = Package(
    name: "Extensions",
    platforms: [
        .iOS(.v26),
        .macOS(.v26),
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
        ),
    ]
)

package.swiftLanguageModes = [.v6]

for target in package.targets {
    target.swiftSettings = strictSwiftSettings
}
