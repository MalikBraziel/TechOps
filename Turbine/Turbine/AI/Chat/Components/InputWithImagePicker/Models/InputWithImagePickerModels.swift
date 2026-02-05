//
//  InputWithImagePickerModels.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:45:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:45:00 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Domain models for the InputWithImagePicker component
//  - Defines image items backed by Data for safe UI rendering
//
//  DATA FLOW:
//  1a) Image Picker ─────data────▶ InputWithImagePickerImageItem
//  1b) State ─────props────▶ InputWithImagePickerView
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ InputWithImagePickerState    │────▶│ InputWithImagePickerImageItem │
//  │ (state machine)              │     │ (value type)                 │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - SwiftUXRefactoring.md
//  - Architecture.md
//
// =============================================================================
//

import Foundation
import UIKit

// MARK: - Model

/// Identifiable wrapper for image data selected by the user.
struct InputWithImagePickerImageItem: Identifiable, Sendable {
    let id: UUID
    let data: Data

    init(id: UUID = UUID(), data: Data) {
        self.id = id
        self.data = data
    }

    /// Decodes image data for SwiftUI rendering.
    var uiImage: UIImage? {
        UIImage(data: data)
    }
}
