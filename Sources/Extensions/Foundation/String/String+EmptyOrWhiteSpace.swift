import Foundation

extension String {
    /// Returns true if the string is empty or contains only whitespace and newline characters.
    public var isEmptyOrWhiteSpace: Bool {
        trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
}
