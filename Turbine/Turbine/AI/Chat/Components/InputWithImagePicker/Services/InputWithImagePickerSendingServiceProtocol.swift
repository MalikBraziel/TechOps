//
//  InputWithImagePickerSendingServiceProtocol.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:46:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:46:00 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Defines the service boundary for sending chat messages
//  - Supports text plus image attachments for the AI Chat feature
//
//  DATA FLOW:
//  1a) ViewModel ───async request──▶ InputWithImagePickerSendingServiceProtocol.sendMessage
//  1b) Service  ─────result───────▶ ViewModel
//
//  OBJECTS:
//  ┌────────────────────────────────────┐     ┌──────────────────────────────┐
//  │ InputWithImagePickerViewModel      │────▶│ InputWithImagePickerSending  │
//  │ (consumer)                         │     │ ServiceProtocol (protocol)  │
//  └────────────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - Architecture.md
//  - Concurrency.md
//
// =============================================================================
//

import Foundation

// MARK: - Service Protocol

/// Sends chat messages with optional image attachments.
protocol InputWithImagePickerSendingServiceProtocol: Sendable {
    /// Sends a message with text and selected images.
    func sendMessage(text: String, images: [InputWithImagePickerImageItem]) async
}
