//
//  InputWithImagePickerEffect.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:46:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:46:00 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Effect boundary for InputWithImagePicker
//
//  DATA FLOW:
//  1a) Reducer ─────command────▶ ViewModel.handle(command)
//  1b) ViewModel ─────effect────▶ SendingService.sendMessage
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ InputWithImagePickerCommand  │────▶│ InputWithImagePickerEffect    │
//  │ (value type)                 │     │ (effect boundary)            │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - StateMachine.md
//
// =============================================================================
//

import Foundation

// MARK: - Effect

/// Effect types triggered by InputWithImagePicker commands.
enum InputWithImagePickerEffect: Sendable {
    case sendMessage(text: String, images: [InputWithImagePickerImageItem])
}
