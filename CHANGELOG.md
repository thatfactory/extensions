# Changelog

All notable changes to extensions are documented here.

## 0.3.3 — 2026-09-19

### Fixed

- Preserved the public SwiftUI shape API when building iOS documentation under strict import visibility.

## 0.3.2 — 2026-09-19

### Changed

- Adopted Agent Guidelines `0.0.33` and the Swift package compiler-settings baseline.
- Declared Swift 6, warnings as errors, and the required upcoming language features for every package target.
- Made imports and existential types explicit where required by the stricter compiler policy without intentionally changing runtime behavior.
