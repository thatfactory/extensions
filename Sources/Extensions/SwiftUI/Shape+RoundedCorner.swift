#if canImport(UIKit)
    public import SwiftUI
    public import UIKit

    /// Produces a shape with rounded corners.
    ///
    /// Allows specifying which corner is to be rounded. For example:
    /// ```
    /// .cornerRadius(20, corners: [.topLeft, .bottomRight])
    /// ```
    ///
    /// [source](https://stackoverflow.com/a/58606176/584548)
    public struct RoundedCorner: Shape {
        var radius: CGFloat = .infinity
        var corners: UIRectCorner = .allCorners

        public func path(in rect: CGRect) -> Path {
            let path = UIBezierPath(
                roundedRect: rect,
                byRoundingCorners: corners,
                cornerRadii: CGSize(width: radius, height: radius)
            )
            return Path(path.cgPath)
        }
    }

    extension View {
        /// Clips the view with rounded corners for the specified corners.
        ///
        /// - Parameters:
        ///   - radius: The corner radius to apply.
        ///   - corners: The corners that should be rounded.
        /// - Returns: A view clipped to the specified rounded corners.
        ///
        /// ![RoundedCorner preview](roundedcorner.png)
        public func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
            clipShape(RoundedCorner(radius: radius, corners: corners))
        }
    }

    // MARK: - Preview

    #Preview("RoundedCorner, [.topLeft, .topRight]") {
        VStack(spacing: .zero) {
            Rectangle()
                .fill(.orange)
                .frame(width: 300, height: 200)
                .cornerRadius(40, corners: [.topLeft, .topRight])
            Rectangle()
                .frame(height: 2)
                .frame(maxWidth: .infinity)
                .foregroundColor(.black)
        }
    }
#endif
