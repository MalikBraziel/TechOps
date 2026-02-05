//
//  OverlaySearchBarFixtures.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:38:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:38:00 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Fixture data for overlay search bar previews and local development
//
//  DATA FLOW:
//  1a) Fixtures ─────sections────▶ OverlaySearchBarState
//  1b) State ─────preview────▶ SwiftUI previews
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ OverlaySearchBarFixtures     │────▶│ OverlaySearchBarSuggestion    │
//  │ (fixture source)             │     │ (value type)                  │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - Architecture.md
//
// =============================================================================
//

import Foundation

// MARK: - Fixtures

/// Fixture values for the overlay search bar feature.
enum OverlaySearchBarFixtures {
    /// Sample suggestion sections matching the SwiftUX overlay search bar.
    static let sections: [OverlaySearchBarSuggestionSection] = [
        OverlaySearchBarSuggestionSection(
            title: "Recents",
            icon: "clock.arrow.trianglehead.counterclockwise.rotate.90",
            suggestions: [
                OverlaySearchBarSuggestion(
                    title: "Weekend trip plan",
                    icon: "beach.umbrella.fill",
                    tint: .pink
                ),
                OverlaySearchBarSuggestion(
                    title: "October budget plans",
                    icon: "dollarsign.gauge.chart.leftthird.topthird.rightthird",
                    tint: .green
                )
            ]
        )
    ]
}
