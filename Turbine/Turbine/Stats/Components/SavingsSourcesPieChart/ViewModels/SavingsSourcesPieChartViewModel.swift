//
//  SavingsSourcesPieChartViewModel.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:58:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:47:16 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Compound-level ViewModel for SavingsSourcesPieChart
//  - Bridges state machine to SwiftUI compounds
//  - Thread-safe via @MainActor and @Observable
//
//  DATA FLOW:
//  1a) Compound ─────async event────▶ ViewModel.send(event)
//  1b) ViewModel ────command───────▶ Service.fetchSnapshot()
//  1c) Service  ─────snapshot──────▶ ViewModel.state
//  1d) ViewModel ─────bind────────▶ Compound
//
//  OBJECTS:
//  ┌────────────────────────────────────┐     ┌────────────────────────────────────┐
//  │ SavingsSourcesPieChartView         │────▶│ SavingsSourcesPieChartViewModel    │
//  │ (compound)                          │     │ (@Observable)                      │
//  └────────────────────────────────────┘     └────────────────────────────────────┘
//  ┌────────────────────────────────────┐     ┌────────────────────────────────────┐
//  │ SavingsSourcesPieChartService      │◀────│ SavingsSourcesPieChartViewModel    │
//  │ (service)                          │     │ (consumer)                         │
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

/// ViewModel binding SavingsSourcesPieChart state to SwiftUI compounds.
@Observable
@MainActor
final class SavingsSourcesPieChartViewModel {
    var state: SavingsSourcesPieChartState
    private let service: SavingsSourcesPieChartServiceProtocol

    init(state: SavingsSourcesPieChartState, service: SavingsSourcesPieChartServiceProtocol) {
        self.state = state
        self.service = service
    }

    // MARK: - Data Flow

    /// Sends UI events into the reducer and handles resulting commands.
    func send(_ event: SavingsSourcesPieChartEvent) {
        let commands = SavingsSourcesPieChartReducer.reduce(state: &state, event: event)
        for command in commands {
            handle(command)
        }
    }

    private func handle(_ command: SavingsSourcesPieChartCommand) {
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
