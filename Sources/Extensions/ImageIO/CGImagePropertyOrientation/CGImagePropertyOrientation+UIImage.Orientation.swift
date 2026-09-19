#if canImport(UIKit)
    public import ImageIO
    public import UIKit

    // The CGImagePropertyOrientation type covers the same orientation names as
    // UIImage.Orientation, but their raw values differ. Use the functions below to map
    // semantically equivalent values between the types.
    // Source: https://apple.co/3GnXuPE

    extension CGImagePropertyOrientation {
        /// Initializes a `CGImagePropertyOrientation` from the given `UIImage.Orientation`,
        /// providing a mapping between the different orientation systems.
        public init?(_ uiOrientation: UIImage.Orientation) {
            switch uiOrientation {
            case .up:
                self = .up
            case .upMirrored:
                self = .upMirrored
            case .down:
                self = .down
            case .downMirrored:
                self = .downMirrored
            case .left:
                self = .left
            case .leftMirrored:
                self = .leftMirrored
            case .right:
                self = .right
            case .rightMirrored:
                self = .rightMirrored
            @unknown default:
                return nil
            }
        }
    }

    extension UIImage.Orientation {
        /// Initializes a `UIImage.Orientation` from the given `CGImagePropertyOrientation`,
        /// providing a mapping between the different orientation systems.
        public init(_ cgOrientation: CGImagePropertyOrientation) {
            switch cgOrientation {
            case .up:
                self = .up
            case .upMirrored:
                self = .upMirrored
            case .down:
                self = .down
            case .downMirrored:
                self = .downMirrored
            case .left:
                self = .left
            case .leftMirrored:
                self = .leftMirrored
            case .right:
                self = .right
            case .rightMirrored:
                self = .rightMirrored
            }
        }
    }
#endif
