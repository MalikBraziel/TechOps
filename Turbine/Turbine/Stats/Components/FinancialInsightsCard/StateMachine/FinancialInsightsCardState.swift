//
//  FinancialInsightsCardState.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:32:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:40:16 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Value type representing UI state for the Financial Insights Card
//  - Encapsulates card data and loading state
//
//  DATA FLOW:
//  1a) Reducer ─────state────▶ ViewModel
//  1b) ViewModel ─────bind────▶ Views
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────────┐
//  │ FinancialInsightsCardReducer │────▶│ FinancialInsightsCardState        │
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

// MARK: - State

/// UI state for rendering the financial insights card.
struct FinancialInsightsCardState: Sendable {
    var card: FinancialInsightsCardData
    var isLoading: Bool = false
}
