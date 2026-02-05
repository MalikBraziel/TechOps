//
//  InputWithImagePickerFixtures.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:45:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:45:00 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Fixture data for InputWithImagePicker previews
//  - Provides sample text and images for UI parity checks
//
//  DATA FLOW:
//  1a) Fixtures ─────props────▶ InputWithImagePickerState
//  1b) State ─────bind────▶ InputWithImagePickerView
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ InputWithImagePickerFixtures │────▶│ InputWithImagePickerState     │
//  │ (fixtures)                   │     │ (value type)                 │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - SwiftUXRefactoring.md
//
// =============================================================================
//

import UIKit

// MARK: - Fixtures

/// Fixture values for InputWithImagePicker previews.
enum InputWithImagePickerFixtures {
    static let sampleText = "How can Clarity help you today?"

    static var sampleImages: [InputWithImagePickerImageItem] {
        [
            InputWithImagePickerImageItem(data: sampleImageData(systemName: "photo")),
            InputWithImagePickerImageItem(data: sampleImageData(systemName: "leaf")),
            InputWithImagePickerImageItem(data: sampleImageData(systemName: "sparkles"))
        ]
    }

    private static func sampleImageData(systemName: String) -> Data {
        let config = UIImage.SymbolConfiguration(pointSize: 28, weight: .medium)
        let image = UIImage(systemName: systemName, withConfiguration: config) ?? UIImage()
        return image.pngData() ?? Data()
    }
}
