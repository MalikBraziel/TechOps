//
//  SavingsSourcesPieChartState.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:55:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:39:19 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Value type representing UI state for SavingsSourcesPieChart
//  - Encapsulates summary data and loading state
//
//  DATA FLOW:
//  1a) Reducer ─────state────▶ ViewModel
//  1b) ViewModel ─────bind────▶ Views
//
//  OBJECTS:
//  ┌────────────────────────────────────┐     ┌────────────────────────────────────┐
//  │ SavingsSourcesPieChartReducer      │────▶│ SavingsSourcesPieChartState         │
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

// MARK: - State

/// UI state for rendering the savings sources pie chart component.
struct SavingsSourcesPieChartState: Sendable {
    var summary: SavingsSourcesPieChartSummary
    var isLoading: Bool = false
}
