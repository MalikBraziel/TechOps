//
//  ImagesCollectionPreviewState.swift
//  Turbine
//
//  Created: February 02, 2026 @ 01:05:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 02, 2026 @ 01:05:00 AM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Value type representing UI state for ImagesCollectionPreview
//  - Encapsulates preview card data and loading state
//
//  DATA FLOW:
//  1a) Reducer ─────state────▶ ViewModel
//  1b) ViewModel ─────bind────▶ Views
//
//  OBJECTS:
//  ┌────────────────────────────────────┐     ┌────────────────────────────────────┐
//  │ ImagesCollectionPreviewReducer     │────▶│ ImagesCollectionPreviewState       │
//  │ (pure reducer)                     │     │ (value type)                        │
//  └────────────────────────────────────┘     └────────────────────────────────────┘
//
//  REFERENCES:
//  - StateMachine.md
//  - Architecture.md
//
// =============================================================================
//

import Foundation

// MARK: - State

/// UI state for rendering the images collection preview card.
struct ImagesCollectionPreviewState: Sendable {
    var data: ImagesCollectionPreviewCardData
    var isLoading: Bool

    init(data: ImagesCollectionPreviewCardData, isLoading: Bool = false) {
        self.data = data
        self.isLoading = isLoading
    }
}
