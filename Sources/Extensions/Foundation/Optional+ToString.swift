import Foundation

extension Optional {
    /// Allows printing "nil" (when the optional is nil) or the wrapped value itself.
    ///
    /// E.g.: "123" instead of "Optional(123)"
    public func toString() -> String {
        self.map { String(describing: $0) } ?? "nil"
    }
}
