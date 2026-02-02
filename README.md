[![swift-version](https://img.shields.io/badge/swift-6.2-ea7a50.svg?logo=swift&logoColor=white)](https://developer.apple.com/swift/)
[![xcode-version](https://img.shields.io/badge/xcode-26.2-50ace8.svg?logo=xcode&logoColor=white)](https://developer.apple.com/xcode/)
[![spm-ready](https://img.shields.io/badge/spm-ready-b68f6a.svg?logo=gitlfs&logoColor=white)](https://developer.apple.com/documentation/xcode/swift-packages)
[![platforms](https://img.shields.io/badge/platforms-iOS%2015+%20%7C%20macOS%2013+%20-lightgrey.svg?logo=apple&logoColor=white)](https://en.wikipedia.org/wiki/List_of_Apple_operating_systems)
[![license](https://img.shields.io/badge/license-MIT-67ac5b.svg?logo=googledocs&logoColor=white)](https://en.wikipedia.org/wiki/MIT_License)
[![release](https://github.com/thatfactory/extensions/actions/workflows/release.yml/badge.svg)](https://github.com/thatfactory/extensions/actions/workflows/release.yml)

# Extensions ⚙️
A collection of useful Swift/SwiftUI extensions.

## Content

Framework | Extension | Description
--- | --- | ---
[Foundation](https://developer.apple.com/documentation/foundation) | `CGFloat+Degrees` | Provides convenient `CGFloat` constants for common angle measurements in radians. Examples:<br> - Rotate a view by 90 degrees:<br>`view.transform = CGAffineTransform(rotationAngle: .degrees90)`<br> - Set a circular progress bar to half:<br>`progressBar.progress = .degrees180 / .degrees360`
&#xfeff;| `Collection+Safe` | Avoids `Fatal error: Index out of range (out of bounds index)`<br>Returns the element at the specified index if it is within bounds; otherwise `nil`.
&#xfeff;| `Optional+ToString` | Allows printing `nil` when the optional is `nil`, or the wrapped value itself. For example: `123` instead of `Optional(123)`.
&#xfeff;| `String+Decimal` | Formats a numeric string to a specified number of decimal places. For example: `"351.6632141234"` becomes `"351.66"`.
&#xfeff;| `String+EmptyOrWhiteSpace` | Returns `true` if the string is empty or contains only whitespace and newline characters.
&#xfeff;| `String+Masking` | Hides sensitive information. Returns `••••` when `self` is not empty.
&#xfeff;| `String+Split` | Returns the first component of the string up to, but not including, the first occurrence of a given separator.
[Image I/O](https://developer.apple.com/documentation/ImageIO) | `CGImagePropertyOrientation+CaseIterable` | Extends `CGImagePropertyOrientation` to conform to `CaseIterable`, providing a collection of all orientation cases.
&#xfeff;| `CGImagePropertyOrientation+CustomStringConvertible` | Makes `CGImagePropertyOrientation` instances print-friendly. Examples:<br> - `print(orientation.description)`<br>Output: **`8, Left (Rotated 90° CW (ClockWise))`**<br> - `print(orientation.shortDescription)`<br>Output: **`Up`**<br> - `print(orientation.emoji)`<br>Output (orientation is up/mirrored): **`⬆️🪞`**<br> - `print(orientation.emoji)`<br>Output (orientation is unknown): **`🤷🏻‍♂️`**
&#xfeff;| `CGImagePropertyOrientation+UIImage.Orientation` | Facilitates the conversion between `CGImagePropertyOrientation` and `UIImage.Orientation`, ensuring accurate mapping despite their differing underlying numeric values.
[PhotoKit](https://developer.apple.com/documentation/photokit) | `PHAssetMediaSubtype+CustomStringConvertible` | Makes `PHAssetMediaSubtype` instances print-friendly. Examples:<br> - `print(phAssetMediaSubtype.description)`<br>Output: `photoPanorama`<br> - `print(phAssetMediaSubtype.description)`<br>Output: `videoHighFrameRate`
&#xfeff;| `PHAssetMediaType+CustomStringConvertible` | Makes `PHAssetMediaType` instances print-friendly. Examples:<br> - `print(phAssetMediaType.description)`<br>Output: `1, Image`<br> - `print(phAssetMediaType.description)`<br>Output: `3, Audio`
[SwiftUI](https://developer.apple.com/documentation/swiftui) | `FadeOut` | Fades out the edge of a view based on a given `FadeOut.Edge`.
&#xfeff;| `FrameSize` | Adds a dashed-colored frame-size container to a view for UI debugging.
&#xfeff;| `Shape+RoundedCorner` | Produces a shape with rounded corners. Allows specifying which corner is to be rounded. For example:<br>`.cornerRadius(20, corners: [.topLeft, .bottomRight])`
&#xfeff;| `StatefulPreviewWrapper` | Makes Xcode's preview canvas fully functional for previewing SwiftUI views that take `@Bindings` as input.
&#xfeff;| `View+Modify` | Allows applying view modifiers based on some criteria. For example:<br>`Text("Some").modify { if someCondition { $0.bold() } }`

## Preview Traits

Trait | Description
--- | ---
`navigationStack` | Wraps a preview in a `NavigationStack`.
`enUS` | Sets the preview locale to `en-US`.
`ptBR` | Sets the preview locale to `pt-BR`.

## SwiftUI Extension Screenshots

FadeOut | FrameSize | RoundedCorner
--- | --- | ---
<img width="296" alt="fadeOut" src="https://github.com/thatfactory/extensions/assets/664951/4ee544dc-6dfc-4fd0-8f4c-62dc17ef04f6"> | <img width="296" alt="frameSize" src="https://github.com/thatfactory/extensions/assets/664951/861c5c83-1bea-4a2b-a6c4-da782b47ef25"> | <img width="296" alt="roundedCorner" src="https://github.com/thatfactory/extensions/assets/664951/283c4895-e30d-4fb8-9e35-592838611bfe">

## Integration
### Xcode
Use Xcode's [built-in support for SPM](https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app).

*or...*

### Package.swift
In your `Package.swift`, add `Extensions` as a dependency:

```swift
dependencies: [
    .package(
        url: "https://github.com/thatfactory/extensions",
        from: "0.1.0"
    )
]
```

Associate the dependency with your target:

```swift
targets: [
    .target(
        name: "YourTarget",
        dependencies: [
            .product(
                name: "Extensions",
                package: "extensions"
            )
        ]
    )
]
```

Run: `swift build`
