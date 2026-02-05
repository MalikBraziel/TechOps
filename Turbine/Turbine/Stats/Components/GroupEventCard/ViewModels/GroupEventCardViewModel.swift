//
//  GroupEventCardViewModel.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:40:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:33:55 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Compound-level ViewModel for GroupEventCard
//  - Bridges state machine to SwiftUI compounds
//  - Thread-safe via @MainActor and @Observable
//
//  DATA FLOW:
//  1a) Compound ─────async event────▶ ViewModel.send(event)
//  1b) ViewModel ────command───────▶ Service.fetchEvent()
//  1c) Service  ─────event────────▶ ViewModel.state
//  1d) ViewModel ─────bind────────▶ Compound
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ GroupEventCardView           │────▶│ GroupEventCardViewModel        │
//  │ (compound)                   │     │ (@Observable)                 │
//  └──────────────────────────────┘     └──────────────────────────────┘
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ GroupEventCardService        │◀────│ GroupEventCardViewModel        │
//  │ (service)                    │     │ (consumer)                    │
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

/// ViewModel binding GroupEventCard state to SwiftUI compounds.
@Observable
@MainActor
final class GroupEventCardViewModel {
    var state: GroupEventCardState
    private let service: GroupEventCardServiceProtocol

    init(state: GroupEventCardState, service: GroupEventCardServiceProtocol) {
        self.state = state
        self.service = service
    }

    // MARK: - Data Flow

    /// Sends UI events into the reducer and handles resulting commands.
    func send(_ event: GroupEventCardEvent) {
        let commands = GroupEventCardReducer.reduce(state: &state, event: event)
        for command in commands {
            handle(command)
        }
    }

    private func handle(_ command: GroupEventCardCommand) {
        switch command {
        case .loadEvent:
            Task { await loadEvent() }
        }
    }

    private func loadEvent() async {
        let eventData = await service.fetchEvent()
        send(.dataLoaded(eventData))
    }
}
