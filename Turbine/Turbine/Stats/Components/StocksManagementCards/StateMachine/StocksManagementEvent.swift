//
//  StocksManagementEvent.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:59:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:47:16 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Declares events for the StocksManagementCards state machine
//
//  DATA FLOW:
//  1a) View ─────event────▶ ViewModel.send(event)
//  1b) ViewModel ─────event────▶ Reducer.reduce
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ StocksManagementCardsView    │────▶│ StocksManagementEvent         │
//  │ (view)                       │     │ (value type)                 │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - StateMachine.md
//
// =============================================================================
//

import Foundation

// MARK: - Event

/// Events that drive state transitions for stocks management cards.
enum StocksManagementEvent: Sendable {
    case taskStarted
    case dataLoaded(StocksManagementSnapshot)
    case addHoldingTapped
    case holdingsMenuTapped
    case newsTapped(StocksNewsItem)
}
