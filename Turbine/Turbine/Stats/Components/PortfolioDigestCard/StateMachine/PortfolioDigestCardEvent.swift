//
//  PortfolioDigestCardEvent.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:14:30 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:47:16 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Declares events for the PortfolioDigestCard state machine
//
//  DATA FLOW:
//  1a) View ─────event────▶ ViewModel.send(event)
//  1b) ViewModel ─────event────▶ Reducer.reduce
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ PortfolioDigestCardView      │────▶│ PortfolioDigestCardEvent      │
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

/// Events that drive state transitions for the portfolio digest card.
enum PortfolioDigestCardEvent: Sendable {
    case taskStarted
    case dataLoaded(PortfolioDigestSnapshot)
}
