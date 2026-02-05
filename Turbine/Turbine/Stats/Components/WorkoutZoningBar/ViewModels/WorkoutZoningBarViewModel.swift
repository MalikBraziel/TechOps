//
//  WorkoutZoningBarViewModel.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:58:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:47:16 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Compound-level ViewModel for WorkoutZoningBar
//  - Bridges state machine to SwiftUI compounds
//  - Thread-safe via @MainActor and @Observable
//
//  DATA FLOW:
//  1a) Compound ─────async event────▶ ViewModel.send(event)
//  1b) ViewModel ────command───────▶ Service.fetchEntries()
//  1c) Service  ─────entries───────▶ ViewModel.state
//  1d) ViewModel ─────bind────────▶ Compound
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ WorkoutZoningBarListCompound │────▶│ WorkoutZoningBarViewModel     │
//  │ (compound)                   │     │ (@Observable)                 │
//  └──────────────────────────────┘     └──────────────────────────────┘
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ WorkoutZoningBarService      │◀────│ WorkoutZoningBarViewModel     │
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

/// ViewModel binding WorkoutZoningBar state to SwiftUI compounds.
///
/// Data Flow: Compound → send(event) → reducer → state.
@Observable
@MainActor
final class WorkoutZoningBarViewModel {
    // MARK: - State

    var state: WorkoutZoningBarState
    private let service: WorkoutZoningBarServiceProtocol

    init(state: WorkoutZoningBarState, service: WorkoutZoningBarServiceProtocol) {
        self.state = state
        self.service = service
    }

    // MARK: - Data Flow

    /// Sends UI events into the reducer and handles resulting commands.
    func send(_ event: WorkoutZoningBarEvent) {
        let commands = WorkoutZoningBarReducer.reduce(state: &state, event: event)
        for command in commands {
            handle(command)
        }
    }

    private func handle(_ command: WorkoutZoningBarCommand) {
        switch command {
        case .loadEntries:
            Task { await loadEntries() }
        }
    }

    private func loadEntries() async {
        let entries = await service.fetchEntries()
        send(.dataLoaded(entries))
    }
}
