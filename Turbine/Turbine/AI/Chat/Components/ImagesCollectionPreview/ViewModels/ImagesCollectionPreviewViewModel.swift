//
//  ImagesCollectionPreviewViewModel.swift
//  Turbine
//
//  Created: February 02, 2026 @ 01:10:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 02, 2026 @ 01:10:00 AM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Compound-level ViewModel for ImagesCollectionPreview
//  - Bridges the state machine to SwiftUI compounds
//  - Thread-safe via @MainActor and @Observable
//
//  DATA FLOW:
//  1a) Compound ─────async event────▶ ViewModel.send(event)
//  1b) ViewModel ────command───────▶ Service.fetchPreviewCardData()
//  1c) Service  ─────event────────▶ ViewModel.state
//  1d) ViewModel ─────bind────────▶ Compound
//
//  OBJECTS:
//  ┌────────────────────────────────────┐     ┌────────────────────────────────────┐
//  │ ImagesCollectionPreviewCompound    │────▶│ ImagesCollectionPreviewViewModel   │
//  │ (compound)                         │     │ (@Observable)                        │
//  └────────────────────────────────────┘     └────────────────────────────────────┘
//  ┌────────────────────────────────────┐     ┌────────────────────────────────────┐
//  │ ImagesCollectionPreviewService     │◀────│ ImagesCollectionPreviewViewModel   │
//  │ (service)                          │     │ (consumer)                           │
//  └────────────────────────────────────┘     └────────────────────────────────────┘
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

/// ViewModel binding images collection preview state to SwiftUI compounds.
@Observable
@MainActor
final class ImagesCollectionPreviewViewModel {
    var state: ImagesCollectionPreviewState
    private let service: ImagesCollectionPreviewServiceProtocol

    init(state: ImagesCollectionPreviewState, service: ImagesCollectionPreviewServiceProtocol) {
        self.state = state
        self.service = service
    }

    // MARK: - Data Flow

    /// Sends UI events into the reducer and handles resulting commands.
    func send(_ event: ImagesCollectionPreviewEvent) {
        let commands = ImagesCollectionPreviewReducer.reduce(state: &state, event: event)
        for command in commands {
            handle(command)
        }
    }

    private func handle(_ command: ImagesCollectionPreviewCommand) {
        switch command {
        case .loadPreviewData:
            Task { await loadPreviewData() }
        }
    }

    private func loadPreviewData() async {
        let data = await service.fetchPreviewCardData()
        send(.dataLoaded(data))
    }
}
