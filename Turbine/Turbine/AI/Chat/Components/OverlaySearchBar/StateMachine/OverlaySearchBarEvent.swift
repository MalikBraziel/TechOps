//
//  OverlaySearchBarEvent.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:38:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:38:00 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Declares events for the overlay search bar state machine
//
//  DATA FLOW:
//  1a) View ─────event────▶ ViewModel.send(event)
//  1b) ViewModel ─────event────▶ Reducer.reduce
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ OverlaySearchBarHomeView     │────▶│ OverlaySearchBarEvent         │
//  │ (view)                       │     │ (value type)                  │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - StateMachine.md
//
// =============================================================================
//

import Foundation

// MARK: - Event

/// Events emitted by the overlay search bar UI.
enum OverlaySearchBarEvent: Sendable {
    case taskStarted
    case searchBarTapped
    case dismissTapped
    case searchQueryChanged(String)
    case suggestionsLoaded([OverlaySearchBarSuggestionSection])
}
