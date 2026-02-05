//
//  OverlaySearchBarReducer.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:38:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:38:00 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Pure reducer for overlay search bar state transitions
//  - Returns next state and commands based on events
//
//  DATA FLOW:
//  1a) ViewModel ─────event────▶ Reducer.reduce
//  1b) Reducer ─────state────▶ ViewModel.state
//  1c) Reducer ─────command──▶ ViewModel.handle(command)
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ OverlaySearchBarReducer      │────▶│ OverlaySearchBarState         │
//  │ (pure reducer)               │     │ (value type)                  │
//  └──────────────────────────────┘     └──────────────────────────────┘
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ OverlaySearchBarReducer      │────▶│ OverlaySearchBarCommand       │
//  │ (pure reducer)               │     │ (value type)                  │
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

/// Pure reducer for overlay search bar state transitions.
enum OverlaySearchBarReducer {
    static func reduce(
        state: inout OverlaySearchBarState,
        event: OverlaySearchBarEvent
    ) -> [OverlaySearchBarCommand] {
        switch event {
        case .taskStarted:
            return [.loadSuggestions]
        case .searchBarTapped:
            state.showSearch = true
            return []
        case .dismissTapped:
            state.showSearch = false
            return []
        case .searchQueryChanged(let query):
            state.searchQuery = query
            return []
        case .suggestionsLoaded(let sections):
            state.suggestionSections = sections
            return []
        }
    }
}
