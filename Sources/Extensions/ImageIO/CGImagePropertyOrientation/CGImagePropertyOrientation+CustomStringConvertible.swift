public import ImageIO

// This package intentionally supplies a stable diagnostic description for Apple's enum.
// swift-format-ignore: AvoidRetroactiveConformances
extension CGImagePropertyOrientation: @retroactive CustomStringConvertible {
    /// Helper that makes instances of type `CGImagePropertyOrientation` print-friendly.
    ///
    /// E.g.: `print(orientation.description)` // Left (Rotated 90° CW (ClockWise)
    public var description: String {
        switch rawValue {
        case 1:
            return "\(rawValue), Up (Normal 0°)"
        case 2:
            return "\(rawValue), UpMirrored"
        case 3:
            return "\(rawValue), Down (Rotate 180°)"
        case 4:
            return "\(rawValue), DownMirrored"
        case 5:
            return "\(rawValue), LeftMirrored"
        case 6:
            return "\(rawValue), Right (Rotated 90° CCW (Counter-ClockWise))"
        case 7:
            return "\(rawValue), RightMirrored"
        case 8:
            return "\(rawValue), Left (Rotated 90° CW (ClockWise))"
        default:
            return "\(rawValue), Unknown"
        }
    }

    /// Helper that makes instances of type `CGImagePropertyOrientation` print-friendly.
    ///
    /// E.g.: `print(orientation.shortDescription)` // Up
    public var shortDescription: String {
        switch rawValue {
        case 1:
            return "Up"
        case 2:
            return "Up, Mirrored"
        case 3:
            return "Down"
        case 4:
            return "Down, Mirrored"
        case 5:
            return "Left, Mirrored"
        case 6:
            return "Right"
        case 7:
            return "Right, Mirrored"
        case 8:
            return "Left"
        default:
            return "Unknown"
        }
    }

    /// Helper that makes instances of type `CGImagePropertyOrientation` (even more) print-friendly.
    ///
    /// E.g.: `print(orientation.emoji)` // ⬆️🪞
    public var emoji: String {
        switch rawValue {
        case 1:
            return "⬆️"
        case 2:
            return "⬆️🪞"
        case 3:
            return "⬇️"
        case 4:
            return "⬇️🪞"
        case 5:
            return "➡️🪞"
        case 6:
            return "⬅️"
        case 7:
            return "⬅️🪞"
        case 8:
            return "➡️"
        default:
            return "🤷🏻‍♂️"
        }
    }
}
