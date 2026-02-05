//
//  InputWithImagePickerEvent.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:45:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:45:00 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Declares events for the InputWithImagePicker state machine
//  - Captures user interaction and picker lifecycle signals
//
//  DATA FLOW:
//  1a) View ─────event────▶ ViewModel.send(event)
//  1b) ViewModel ─────event────▶ Reducer.reduce
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ InputWithImagePickerView     │────▶│ InputWithImagePickerEvent     │
//  │ (view)                       │     │ (value type)                 │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - StateMachine.md
//
// =============================================================================
//

import Foundation

// MARK: - Event

/// Events emitted by the input with image picker UI.
enum InputWithImagePickerEvent: Sendable {
    case textChanged(String)
    case attachmentTapped
    case imagePickerDismissed
    case imagesLoaded([InputWithImagePickerImageItem])
    case imageRemoved(UUID)
    case sendTapped
}
