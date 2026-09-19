public import Foundation

/// Provides convenient `CGFloat` constants for common angle measurements in radians.
///
/// Example 1:
/// Rotate a view by 90 degrees:
/// view.transform = CGAffineTransform(rotationAngle: .degrees90)
///
/// Example 2:
/// Set a circular progress bar to half:
/// progressBar.progress = .degrees180 / .degrees360
extension CGFloat {
    public static let degrees90 = CGFloat.pi / 2
    public static let degrees180 = CGFloat.pi
    public static let degrees270 = CGFloat.pi + (CGFloat.pi / 2)
    public static let degrees360 = 2 * CGFloat.pi
}
