//
//  InputWithImagePickerViewModel.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:46:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:46:00 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Compound-level ViewModel for InputWithImagePicker
//  - Bridges state machine to SwiftUI compounds
//  - Thread-safe via @MainActor and @Observable
//
//  DATA FLOW:
//  1a) Compound ─────async event────▶ ViewModel.send(event)
//  1b) ViewModel ────command───────▶ SendingService.sendMessage
//  1c) Service  ─────effect───────▶ ViewModel
//  1d) ViewModel ─────bind────────▶ Compound
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ InputWithImagePickerCompound │────▶│ InputWithImagePickerViewModel │
//  │ (compound)                   │     │ (@Observable)                │
//  └──────────────────────────────┘     └──────────────────────────────┘
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ InputWithImagePickerSending  │◀────│ InputWithImagePickerViewModel │
//  │ Service (service)            │     │ (consumer)                    │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - StateMachine.md
//  - Concurrency.md
//  - Architecture.md
//
// =============================================================================
//

import Observation

// MARK: - ViewModel

/// ViewModel binding input-with-image-picker state to SwiftUI compounds.
///
/// Data Flow: UI events → reducer → commands → sending service.
@Observable
@MainActor
final class InputWithImagePickerViewModel {
    var state: InputWithImagePickerState
    private let sendingService: InputWithImagePickerSendingServiceProtocol

    init(state: InputWithImagePickerState, sendingService: InputWithImagePickerSendingServiceProtocol) {
        self.state = state
        self.sendingService = sendingService
    }

    // MARK: - Data Flow

    /// Sends UI events into the reducer and handles resulting commands.
    func send(_ event: InputWithImagePickerEvent) {
        let commands = InputWithImagePickerReducer.reduce(state: &state, event: event)
        for command in commands {
            handle(command)
        }
    }

    // MARK: - Effects

    private func handle(_ command: InputWithImagePickerCommand) {
        switch command {
        case .sendMessage(let text, let images):
            Task { await sendingService.sendMessage(text: text, images: images) }
        }
    }
}
