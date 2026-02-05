//
//  StocksManagementCardsViewModel.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:03:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:47:16 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Compound-level ViewModel for StocksManagementCards
//  - Bridges state machine to SwiftUI compounds
//  - Thread-safe via @MainActor and @Observable
//
//  DATA FLOW:
//  1a) Compound ─────async event────▶ ViewModel.send(event)
//  1b) ViewModel ────command───────▶ Service.fetchSnapshot()
//  1c) Service  ─────snapshot────▶ ViewModel.state
//  1d) ViewModel ─────bind────────▶ Compound
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ StocksManagementCardsView    │────▶│ StocksManagementCardsViewModel│
//  │ (compound)                   │     │ (@Observable)                 │
//  └──────────────────────────────┘     └──────────────────────────────┘
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ StocksManagementService      │◀────│ StocksManagementCardsViewModel│
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

/// ViewModel binding StocksManagementCards state to SwiftUI compounds.
@Observable
@MainActor
final class StocksManagementCardsViewModel {
    var state: StocksManagementState
    private let service: StocksManagementServiceProtocol

    init(state: StocksManagementState, service: StocksManagementServiceProtocol) {
        self.state = state
        self.service = service
    }

    // MARK: - Data Flow

    /// Sends UI events into the reducer and handles resulting commands.
    func send(_ event: StocksManagementEvent) {
        let commands = StocksManagementReducer.reduce(state: &state, event: event)
        for command in commands {
            handle(command)
        }
    }

    private func handle(_ command: StocksManagementCommand) {
        switch command {
        case .loadSnapshot:
            Task { await loadSnapshot() }
        }
    }

    private func loadSnapshot() async {
        let snapshot = await service.fetchSnapshot()
        send(.dataLoaded(snapshot))
    }
}
