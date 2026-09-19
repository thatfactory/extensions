public import ImageIO

// This package intentionally supplies collection semantics for Apple's orientation enum.
// swift-format-ignore: AvoidRetroactiveConformances
extension CGImagePropertyOrientation: @retroactive CaseIterable {
    /// Extends `CGImagePropertyOrientation` to conform to `CaseIterable`,
    /// providing a collection of all orientation cases.
    public static let allCases: [CGImagePropertyOrientation] = [
        .up,
        .upMirrored,
        .down,
        .downMirrored,
        .left,
        .leftMirrored,
        .right,
        .rightMirrored,
    ]
}
