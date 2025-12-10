import ImageIO

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
        .rightMirrored
    ]
}
