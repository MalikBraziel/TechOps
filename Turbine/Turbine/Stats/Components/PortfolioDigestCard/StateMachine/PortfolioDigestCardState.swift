//
//  PortfolioDigestCardState.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:14:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:47:16 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Value type representing UI state for PortfolioDigestCard
//  - Encapsulates summary data and loading state
//
//  DATA FLOW:
//  1a) Reducer ─────state────▶ ViewModel
//  1b) ViewModel ─────bind────▶ Views
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ PortfolioDigestCardReducer   │────▶│ PortfolioDigestCardState      │
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

// MARK: - State

/// UI state for rendering the portfolio digest card component.
struct PortfolioDigestCardState: Sendable {
    var summary: PortfolioDigestCardSummary
    var isLoading: Bool = false
}
