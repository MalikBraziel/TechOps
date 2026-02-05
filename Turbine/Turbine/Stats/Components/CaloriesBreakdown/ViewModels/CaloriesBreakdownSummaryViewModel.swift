//
//  CaloriesBreakdownSummaryViewModel.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:05:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactor Agent
//
//  Last_Updated: February 01, 2026 @ 11:16:52 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactor Agent
//
//  PURPOSE:
//  - Compound-level ViewModel for CaloriesBreakdownSummary
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
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ CaloriesBreakdownSummaryView │────▶│ CaloriesBreakdownSummaryVM     │
//  │ (compound)                   │     │ (@Observable)                 │
//  └──────────────────────────────┘     └──────────────────────────────┘
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ CaloriesBreakdownService     │◀────│ CaloriesBreakdownSummaryVM     │
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

@Observable
@MainActor
final class CaloriesBreakdownSummaryViewModel {
    var state: CaloriesBreakdownState
    private let service: CaloriesBreakdownServiceProtocol

    init(state: CaloriesBreakdownState, service: CaloriesBreakdownServiceProtocol) {
        self.state = state
        self.service = service
    }

    func send(_ event: CaloriesBreakdownEvent) {
        let commands = CaloriesBreakdownReducer.reduce(state: &state, event: event)
        for command in commands {
            handle(command)
        }
    }

    private func handle(_ command: CaloriesBreakdownCommand) {
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
