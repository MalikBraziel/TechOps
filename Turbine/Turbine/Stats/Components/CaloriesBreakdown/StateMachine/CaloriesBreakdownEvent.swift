//
//  CaloriesBreakdownEvent.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:05:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactor Agent
//
//  Last_Updated: February 01, 2026 @ 11:15:59 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactor Agent
//
//  PURPOSE:
//  - Declares events for the CaloriesBreakdown state machine
//
//  DATA FLOW:
//  1a) View ─────event────▶ ViewModel.send(event)
//  1b) ViewModel ─────event────▶ Reducer.reduce
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ CaloriesBreakdownSummaryView │────▶│ CaloriesBreakdownEvent        │
//  │ (view)                       │     │ (value type)                 │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - StateMachine.md
//
// =============================================================================
//

import Foundation

enum CaloriesBreakdownEvent: Sendable {
    case taskStarted
    case dataLoaded(CaloriesBreakdownSnapshot)
}
