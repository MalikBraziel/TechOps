//
//  InputWithImagePickerSendingService.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:46:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:46:00 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Fixture-backed sending service for InputWithImagePicker
//  - Placeholder implementation for previews and local development
//
//  DATA FLOW:
//  1a) ViewModel ───async request──▶ InputWithImagePickerSendingService.sendMessage
//  1b) Service  ─────noop────────▶ ViewModel
//
//  OBJECTS:
//  ┌────────────────────────────────────┐     ┌──────────────────────────────┐
//  │ InputWithImagePickerViewModel      │────▶│ InputWithImagePickerSending  │
//  │ (consumer)                         │     │ Service (service)            │
//  └────────────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - Architecture.md
//
// =============================================================================
//

import Foundation

// MARK: - Fixture Service

/// Default sending service that performs a no-op.
struct InputWithImagePickerSendingService: InputWithImagePickerSendingServiceProtocol {
    func sendMessage(text: String, images: [InputWithImagePickerImageItem]) async {
        _ = (text, images)
    }
}
