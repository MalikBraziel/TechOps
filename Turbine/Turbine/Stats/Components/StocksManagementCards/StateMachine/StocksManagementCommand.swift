//
//  StocksManagementCommand.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:02:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:47:16 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Commands emitted by the StocksManagement reducer
//
//  DATA FLOW:
//  1a) Reducer ─────command────▶ ViewModel.handle(command)
//  1b) ViewModel ───service────▶ Service.fetchSnapshot()
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ StocksManagementReducer      │────▶│ StocksManagementCommand       │
//  │ (pure reducer)               │     │ (value type)                 │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - StateMachine.md
//
// =============================================================================
//

import Foundation

// MARK: - Command

/// Commands executed by the stocks management view model.
enum StocksManagementCommand: Sendable {
    case loadSnapshot
}
