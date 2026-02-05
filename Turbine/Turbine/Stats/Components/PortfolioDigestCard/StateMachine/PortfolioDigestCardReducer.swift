//
//  PortfolioDigestCardReducer.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:16:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:47:16 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Pure reducer for PortfolioDigestCard state transitions
//  - Returns next state and commands based on events
//
//  DATA FLOW:
//  1a) ViewModel ─────event────▶ Reducer.reduce
//  1b) Reducer ─────state────▶ ViewModel.state
//  1c) Reducer ─────command──▶ ViewModel.handle(command)
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ PortfolioDigestCardReducer   │────▶│ PortfolioDigestCardState      │
//  │ (pure reducer)               │     │ (value type)                 │
//  └──────────────────────────────┘     └──────────────────────────────┘
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ PortfolioDigestCardReducer   │────▶│ PortfolioDigestCardCommand    │
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

/// Pure reducer for portfolio digest card state transitions.
enum PortfolioDigestCardReducer {
    static func reduce(
        state: inout PortfolioDigestCardState,
        event: PortfolioDigestCardEvent
    ) -> [PortfolioDigestCardCommand] {
        switch event {
        case .taskStarted:
            state.isLoading = true
            return [.loadSnapshot]
        case .dataLoaded(let snapshot):
            state.summary = PortfolioDigestCardSummary(snapshot: snapshot)
            state.isLoading = false
            return []
        }
    }
}
