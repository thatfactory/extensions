import SwiftUI

public extension PreviewTrait<Preview.ViewTraits> {
    /// Preview trait for U.S. English locale.
    static var enUS: Self {
        .modifier(LocaleModifier(localeIdentifier: "en-US"))
    }

    /// Preview trait for Brazilian Portuguese locale.
    static var ptBR: Self {
        .modifier(LocaleModifier(localeIdentifier: "pt-BR"))
    }
}

// MARK: - Private

/// Applies a specific locale to previews.
private struct LocaleModifier: PreviewModifier {
    /// The locale identifier to inject into the preview environment.
    let localeIdentifier: String

    func body(content: Content, context: Void) -> some View {
        content
            .environment(\.locale, .init(identifier: localeIdentifier))
    }
}
