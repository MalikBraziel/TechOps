//
//  ShowPreviewCardState.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:45:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 02, 2026 @ 12:45:00 AM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Value type representing UI state for ShowPreviewCard
//  - Encapsulates content, selection, and image-derived styling
//
//  DATA FLOW:
//  1a) Reducer ─────state────▶ ViewModel
//  1b) ViewModel ─────bind────▶ Views
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ ShowPreviewCardReducer       │────▶│ ShowPreviewCardState          │
//  │ (pure reducer)               │     │ (value type)                  │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - Architecture.md
//  - SwiftUXRefactoring.md
//
// =============================================================================
//

import SwiftUI

// MARK: - State

/// UI state for rendering a show preview card.
struct ShowPreviewCardState: Sendable {
    var data: ShowPreviewCardData
    var isAdded: Bool
    var dominantColor: Color
    var isLoading: Bool

    init(
        data: ShowPreviewCardData,
        isAdded: Bool = false,
        dominantColor: Color = .black,
        isLoading: Bool = false
    ) {
        self.data = data
        self.isAdded = isAdded
        self.dominantColor = dominantColor
        self.isLoading = isLoading
    }
}
