//
//  OverlaySearchBarState.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:38:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:38:00 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Value type representing the overlay search bar UI state
//  - Stores search visibility, query text, and suggestion sections
//
//  DATA FLOW:
//  1a) Reducer ─────state────▶ ViewModel
//  1b) ViewModel ─────bind────▶ Views
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ OverlaySearchBarReducer      │────▶│ OverlaySearchBarState         │
//  │ (pure reducer)               │     │ (value type)                  │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - StateMachine.md
//
// =============================================================================
//

import Foundation

// MARK: - State

/// UI state for the overlay search bar feature.
struct OverlaySearchBarState: Sendable {
    var showSearch: Bool
    var searchQuery: String
    var suggestionSections: [OverlaySearchBarSuggestionSection]

    init(
        showSearch: Bool = false,
        searchQuery: String = "",
        suggestionSections: [OverlaySearchBarSuggestionSection] = []
    ) {
        self.showSearch = showSearch
        self.searchQuery = searchQuery
        self.suggestionSections = suggestionSections
    }
}
