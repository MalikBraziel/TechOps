//
//  FinancialInsightsCardViewModel.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:32:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:46:57 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Compound-level ViewModel for the Financial Insights Card
//  - Bridges the state machine to SwiftUI compounds
//  - Thread-safe via @MainActor and @Observable
//
//  DATA FLOW:
//  1a) Compound ─────async event────▶ ViewModel.send(event)
//  1b) ViewModel ────command───────▶ Service.fetchCard()
//  1c) Service  ─────card─────────▶ ViewModel.state
//  1d) ViewModel ─────bind────────▶ Compound
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────────┐
//  │ FinancialInsightsCardView    │────▶│ FinancialInsightsCardViewModel    │
//  │ (compound)                   │     │ (@Observable)                     │
//  └──────────────────────────────┘     └──────────────────────────────────┘
//  ┌──────────────────────────────┐     ┌──────────────────────────────────┐
//  │ FinancialInsightsCardService │◀────│ FinancialInsightsCardViewModel    │
//  │ (service)                    │     │ (consumer)                        │
//  └──────────────────────────────┘     └──────────────────────────────────┘
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

/// ViewModel binding Financial Insights Card state to SwiftUI compounds.
@Observable
@MainActor
final class FinancialInsightsCardViewModel {
    var state: FinancialInsightsCardState
    private let service: FinancialInsightsCardServiceProtocol

    init(state: FinancialInsightsCardState, service: FinancialInsightsCardServiceProtocol) {
        self.state = state
        self.service = service
    }

    // MARK: - Data Flow

    /// Sends UI events into the reducer and handles resulting commands.
    func send(_ event: FinancialInsightsCardEvent) {
        let commands = FinancialInsightsCardReducer.reduce(state: &state, event: event)
        for command in commands {
            handle(command)
        }
    }

    private func handle(_ command: FinancialInsightsCardCommand) {
        switch command {
        case .loadCard:
            Task { await loadCard() }
        }
    }

    private func loadCard() async {
        let card = await service.fetchCard()
        send(.dataLoaded(card))
    }
}
