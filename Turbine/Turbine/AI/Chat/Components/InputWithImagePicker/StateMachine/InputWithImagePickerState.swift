//
//  InputWithImagePickerState.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:45:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:45:00 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Value type representing UI state for InputWithImagePicker
//  - Encapsulates input text, selected images, and picker visibility
//
//  DATA FLOW:
//  1a) Reducer ─────state────▶ ViewModel
//  1b) ViewModel ─────bind────▶ Views
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ InputWithImagePickerReducer  │────▶│ InputWithImagePickerState     │
//  │ (pure reducer)               │     │ (value type)                 │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - StateMachine.md
//  - Architecture.md
//
// =============================================================================
//

import Foundation

// MARK: - State

/// UI state for rendering the input with image picker component.
struct InputWithImagePickerState: Sendable {
    var text: String
    var selectedImages: [InputWithImagePickerImageItem]
    var isShowingImagePicker: Bool
    var isExpanded: Bool

    init(
        text: String = "",
        selectedImages: [InputWithImagePickerImageItem] = [],
        isShowingImagePicker: Bool = false,
        isExpanded: Bool = false
    ) {
        self.text = text
        self.selectedImages = selectedImages
        self.isShowingImagePicker = isShowingImagePicker
        self.isExpanded = isExpanded
    }
}
