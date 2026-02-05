//
//  WorkoutZoningBarReducer.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:57:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:47:16 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Pure reducer for WorkoutZoningBar state transitions
//  - Returns next state and commands based on events
//
//  DATA FLOW:
//  1a) ViewModel ─────event────▶ Reducer.reduce
//  1b) Reducer ─────state────▶ ViewModel.state
//  1c) Reducer ─────command──▶ ViewModel.handle(command)
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ WorkoutZoningBarReducer      │────▶│ WorkoutZoningBarState         │
//  │ (pure reducer)               │     │ (value type)                 │
//  └──────────────────────────────┘     └──────────────────────────────┘
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ WorkoutZoningBarReducer      │────▶│ WorkoutZoningBarCommand       │
//  │ (pure reducer)               │     │ (value type)                 │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - StateMachine.md
//  - Architecture.md
//
// =============================================================================
//

import Foundation

// MARK: - Reducer

/// Pure reducer for workout zoning bar state transitions.
enum WorkoutZoningBarReducer {
    static func reduce(
        state: inout WorkoutZoningBarState,
        event: WorkoutZoningBarEvent
    ) -> [WorkoutZoningBarCommand] {
        switch event {
        case .taskStarted:
            state.isLoading = true
            return [.loadEntries]
        case .dataLoaded(let entries):
            state.entries = entries
            state.isLoading = false
            return []
        }
    }
}
