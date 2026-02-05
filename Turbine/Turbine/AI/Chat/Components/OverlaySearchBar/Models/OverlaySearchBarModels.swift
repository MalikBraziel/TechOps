//
//  OverlaySearchBarModels.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:38:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:38:00 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Models representing overlay search suggestions and sections
//
//  DATA FLOW:
//  1a) Service ─────models────▶ ViewModel.state
//  1b) ViewModel ─────bind────▶ Views
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ OverlaySearchBarSuggestion   │────▶│ OverlaySearchBarViewModel     │
//  │ (model)                      │     │ (@Observable)                │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - Architecture.md
//
// =============================================================================
//

import Foundation
import SwiftUI

// MARK: - Models

/// A single suggestion entry shown in the overlay list.
struct OverlaySearchBarSuggestion: Identifiable, Sendable {
    let id: UUID
    let title: String
    let icon: String
    let tint: OverlaySearchBarSuggestionTint

    init(
        id: UUID = UUID(),
        title: String,
        icon: String,
        tint: OverlaySearchBarSuggestionTint
    ) {
        self.id = id
        self.title = title
        self.icon = icon
        self.tint = tint
    }
}

/// A section grouping multiple suggestions under a header.
struct OverlaySearchBarSuggestionSection: Identifiable, Sendable {
    let id: UUID
    let title: String
    let icon: String
    let suggestions: [OverlaySearchBarSuggestion]

    init(
        id: UUID = UUID(),
        title: String,
        icon: String,
        suggestions: [OverlaySearchBarSuggestion]
    ) {
        self.id = id
        self.title = title
        self.icon = icon
        self.suggestions = suggestions
    }
}

// MARK: - Tint

/// Semantic tint options for suggestion icons.
enum OverlaySearchBarSuggestionTint: String, Sendable {
    case pink
    case green
    case blue
    case orange
}

// MARK: - Color Mapping

extension OverlaySearchBarSuggestionTint {
    var color: Color {
        switch self {
        case .pink:
            return .pink
        case .green:
            return .green
        case .blue:
            return .blue
        case .orange:
            return .orange
        }
    }
}
