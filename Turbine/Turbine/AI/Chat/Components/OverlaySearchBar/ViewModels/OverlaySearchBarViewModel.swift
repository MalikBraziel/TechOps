//
//  OverlaySearchBarViewModel.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:38:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:38:00 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Compound-level ViewModel for the overlay search bar feature
//  - Bridges state machine to SwiftUI compounds
//  - Thread-safe via @MainActor and @Observable
//
//  DATA FLOW:
//  1a) Compound ─────async event────▶ ViewModel.send(event)
//  1b) ViewModel ────command───────▶ Service.fetchSuggestionSections()
//  1c) Service  ─────sections──────▶ ViewModel.state
//  1d) ViewModel ─────bind────────▶ Compound
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ OverlaySearchBarView         │────▶│ OverlaySearchBarViewModel     │
//  │ (compound)                   │     │ (@Observable)                │
//  └──────────────────────────────┘     └──────────────────────────────┘
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ OverlaySearchBarService      │◀────│ OverlaySearchBarViewModel     │
//  │ (service)                    │     │ (consumer)                   │
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

/// ViewModel binding overlay search bar state to SwiftUI compounds.
@Observable
@MainActor
final class OverlaySearchBarViewModel {
    var state: OverlaySearchBarState
    private let service: OverlaySearchBarServiceProtocol

    init(state: OverlaySearchBarState, service: OverlaySearchBarServiceProtocol) {
        self.state = state
        self.service = service
    }

    // MARK: - Data Flow

    /// Sends UI events into the reducer and handles resulting commands.
    func send(_ event: OverlaySearchBarEvent) {
        let commands = OverlaySearchBarReducer.reduce(state: &state, event: event)
        for command in commands {
            handle(command)
        }
    }

    private func handle(_ command: OverlaySearchBarCommand) {
        switch command {
        case .loadSuggestions:
            Task { await loadSuggestions() }
        }
    }

    private func loadSuggestions() async {
        let sections = await service.fetchSuggestionSections()
        send(.suggestionsLoaded(sections))
    }
}
