//
//  SavingsSourcesPieChartReducer.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:58:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:40:16 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Pure reducer for SavingsSourcesPieChart state transitions
//  - Returns next state and commands based on events
//
//  DATA FLOW:
//  1a) ViewModel ─────event────▶ Reducer.reduce
//  1b) Reducer ─────state────▶ ViewModel.state
//  1c) Reducer ─────command──▶ ViewModel.handle(command)
//
//  OBJECTS:
//  ┌────────────────────────────────────┐     ┌────────────────────────────────────┐
//  │ SavingsSourcesPieChartReducer      │────▶│ SavingsSourcesPieChartState         │
//  │ (pure reducer)                      │     │ (value type)                       │
//  └────────────────────────────────────┘     └────────────────────────────────────┘
//  ┌────────────────────────────────────┐     ┌────────────────────────────────────┐
//  │ SavingsSourcesPieChartReducer      │────▶│ SavingsSourcesPieChartCommand       │
//  │ (pure reducer)                      │     │ (value type)                       │
//  └────────────────────────────────────┘     └────────────────────────────────────┘
//
//  REFERENCES:
//  - StateMachine.md
//  - Architecture.md
//
// =============================================================================
//

import Foundation

// MARK: - Reducer

/// Pure reducer for savings sources pie chart state transitions.
enum SavingsSourcesPieChartReducer {
    static func reduce(
        state: inout SavingsSourcesPieChartState,
        event: SavingsSourcesPieChartEvent
    ) -> [SavingsSourcesPieChartCommand] {
        switch event {
        case .taskStarted:
            state.isLoading = true
            return [.loadSnapshot]
        case .dataLoaded(let snapshot):
            state.summary = SavingsSourcesPieChartSummary(snapshot: snapshot)
            state.isLoading = false
            return []
        }
    }
}
