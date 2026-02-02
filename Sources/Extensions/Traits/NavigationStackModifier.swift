import SwiftUI

public extension PreviewTrait<Preview.ViewTraits> {
    /// Wraps a preview in a `NavigationStack`.
    static var navigationStack: Self {
        .modifier(NavigationStackModifier())
    }
}

// MARK: - Private

/// Provides a `NavigationStack` context for previews.
private struct NavigationStackModifier: PreviewModifier {
    func body(content: Content, context: Void) -> some View {
        NavigationStack {
            content
        }
    }
}
