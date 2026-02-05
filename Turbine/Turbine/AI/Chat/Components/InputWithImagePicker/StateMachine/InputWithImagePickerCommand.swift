//
//  InputWithImagePickerCommand.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:45:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:45:00 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Commands emitted by the InputWithImagePicker reducer
//  - Encapsulates side effects such as sending a message
//
//  DATA FLOW:
//  1a) Reducer ─────command────▶ ViewModel.handle(command)
//  1b) ViewModel ───service────▶ InputWithImagePickerSendingService
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ InputWithImagePickerReducer  │────▶│ InputWithImagePickerCommand   │
//  │ (pure reducer)               │     │ (value type)                 │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - StateMachine.md
//
// =============================================================================
//

import Foundation

// MARK: - Command

/// Commands executed by the InputWithImagePicker view model.
enum InputWithImagePickerCommand: Sendable {
    case sendMessage(text: String, images: [InputWithImagePickerImageItem])
}
