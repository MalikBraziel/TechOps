//
//  StocksManagementState.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:58:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:47:16 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Value type representing UI state for StocksManagementCards
//  - Encapsulates snapshot data and loading state
//
//  DATA FLOW:
//  1a) Reducer ─────state────▶ ViewModel
//  1b) ViewModel ─────bind────▶ Views
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ StocksManagementReducer      │────▶│ StocksManagementState         │
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

/// UI state for rendering the stocks management cards.
struct StocksManagementState: Sendable {
    var snapshot: StocksManagementSnapshot
    var isLoading: Bool = false
}
