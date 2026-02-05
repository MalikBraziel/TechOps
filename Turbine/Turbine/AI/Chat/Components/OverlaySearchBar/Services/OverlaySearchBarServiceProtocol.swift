//
//  OverlaySearchBarServiceProtocol.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:38:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:38:00 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Defines the service boundary for overlay search bar suggestions
//  - Supports async retrieval for AI Chat search recents
//
//  DATA FLOW:
//  1a) ViewModel ───async request──▶ OverlaySearchBarServiceProtocol.fetchSuggestionSections()
//  1b) Service  ─────sections────▶ ViewModel
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ OverlaySearchBarViewModel    │────▶│ OverlaySearchBarServiceProtocol│
//  │ (consumer)                   │     │ (protocol)                   │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - Architecture.md
//  - Concurrency.md
//
// =============================================================================
//

import Foundation

// MARK: - Service Protocol

/// Provides suggestion sections for the overlay search bar feature.
protocol OverlaySearchBarServiceProtocol: Sendable {
    /// Fetches suggestion sections displayed in the overlay list.
    func fetchSuggestionSections() async -> [OverlaySearchBarSuggestionSection]
}
