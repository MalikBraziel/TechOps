//
//  OverlaySearchBarService.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:38:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:38:00 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Fixture-backed service for overlay search bar suggestions
//  - Provides deterministic content for previews and local development
//
//  DATA FLOW:
//  1a) ViewModel ───async request──▶ OverlaySearchBarService.fetchSuggestionSections()
//  1b) Service  ─────sections────▶ ViewModel
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ OverlaySearchBarViewModel    │────▶│ OverlaySearchBarService       │
//  │ (consumer)                   │     │ (service)                    │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - Architecture.md
//  - Concurrency.md
//
// =============================================================================
//

import Foundation

// MARK: - Fixture Service

/// Default service implementation for overlay search bar suggestions.
struct OverlaySearchBarService: OverlaySearchBarServiceProtocol {
    func fetchSuggestionSections() async -> [OverlaySearchBarSuggestionSection] {
        OverlaySearchBarFixtures.sections
    }
}
