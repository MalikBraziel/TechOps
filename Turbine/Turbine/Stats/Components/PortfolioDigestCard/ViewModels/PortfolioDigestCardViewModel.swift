//
//  PortfolioDigestCardViewModel.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:19:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:47:16 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Compound-level ViewModel for PortfolioDigestCard
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
//  │ PortfolioDigestCardCompound  │────▶│ PortfolioDigestCardViewModel  │
//  │ (compound)                   │     │ (@Observable)                 │
//  └──────────────────────────────┘     └──────────────────────────────┘
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ PortfolioDigestCardService   │◀────│ PortfolioDigestCardViewModel  │
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

/// ViewModel binding portfolio digest card state to SwiftUI compounds.
@Observable
@MainActor
final class PortfolioDigestCardViewModel {
    var state: PortfolioDigestCardState
    private let service: PortfolioDigestCardServiceProtocol

    init(state: PortfolioDigestCardState, service: PortfolioDigestCardServiceProtocol) {
        self.state = state
        self.service = service
    }

    // MARK: - Data Flow

    /// Sends UI events into the reducer and handles resulting commands.
    func send(_ event: PortfolioDigestCardEvent) {
        let commands = PortfolioDigestCardReducer.reduce(state: &state, event: event)
        for command in commands {
            handle(command)
        }
    }

    private func handle(_ command: PortfolioDigestCardCommand) {
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
