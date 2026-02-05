//
//  FinancialInsightsCardReducer.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:32:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:46:56 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Pure reducer for Financial Insights Card state transitions
//  - Returns next state and commands based on events
//
//  DATA FLOW:
//  1a) ViewModel ─────event────▶ Reducer.reduce
//  1b) Reducer ─────state────▶ ViewModel.state
//  1c) Reducer ─────command──▶ ViewModel.handle(command)
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────────┐
//  │ FinancialInsightsCardReducer │────▶│ FinancialInsightsCardState        │
//  │ (pure reducer)               │     │ (value type)                      │
//  └──────────────────────────────┘     └──────────────────────────────────┘
//  ┌──────────────────────────────┐     ┌──────────────────────────────────┐
//  │ FinancialInsightsCardReducer │────▶│ FinancialInsightsCardCommand      │
//  │ (pure reducer)               │     │ (value type)                      │
//  └──────────────────────────────┘     └──────────────────────────────────┘
//
//  REFERENCES:
//  - StateMachine.md
//  - Architecture.md
//
// =============================================================================
//

import Foundation

// MARK: - Reducer

/// Pure reducer for Financial Insights Card state transitions.
enum FinancialInsightsCardReducer {
    static func reduce(
        state: inout FinancialInsightsCardState,
        event: FinancialInsightsCardEvent
    ) -> [FinancialInsightsCardCommand] {
        switch event {
        case .taskStarted:
            state.isLoading = true
            return [.loadCard]
        case .dataLoaded(let card):
            state.card = card
            state.isLoading = false
            return []
        }
    }
}
