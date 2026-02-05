//
//  CaloriesBreakdownReducer.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:05:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactor Agent
//
//  Last_Updated: February 01, 2026 @ 11:15:59 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactor Agent
//
//  PURPOSE:
//  - Pure reducer for CaloriesBreakdown state transitions
//  - Returns next state and commands based on events
//
//  DATA FLOW:
//  1a) ViewModel ─────event────▶ Reducer.reduce
//  1b) Reducer ─────state────▶ ViewModel.state
//  1c) Reducer ─────command──▶ ViewModel.handle(command)
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ CaloriesBreakdownReducer     │────▶│ CaloriesBreakdownState        │
//  │ (pure reducer)               │     │ (value type)                 │
//  └──────────────────────────────┘     └──────────────────────────────┘
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ CaloriesBreakdownReducer     │────▶│ CaloriesBreakdownCommand      │
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

enum CaloriesBreakdownReducer {
    static func reduce(state: inout CaloriesBreakdownState, event: CaloriesBreakdownEvent) -> [CaloriesBreakdownCommand] {
        switch event {
        case .taskStarted:
            state.isLoading = true
            return [.loadSnapshot]
        case .dataLoaded(let snapshot):
            state.summary = CaloriesBreakdownSummary(snapshot: snapshot)
            state.isLoading = false
            return []
        }
    }
}
