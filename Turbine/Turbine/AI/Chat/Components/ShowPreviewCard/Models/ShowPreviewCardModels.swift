//
//  ShowPreviewCardModels.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:45:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 02, 2026 @ 12:45:00 AM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Domain models for the ShowPreviewCard component
//  - Defines the content and metadata rendered in the preview card
//
//  DATA FLOW:
//  1a) Fixtures/Services ─────data────▶ ShowPreviewCardState
//  1b) State ─────props────▶ ShowPreviewCardView
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ ShowPreviewCardFixtures      │────▶│ ShowPreviewCardData           │
//  │ (fixture source)             │     │ (value type)                  │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - Architecture.md
//  - SwiftUXRefactoring.md
//
// =============================================================================
//

import Foundation

// MARK: - Show Preview Card Model

/// Domain model representing a single show preview card.
struct ShowPreviewCardData: Identifiable, Sendable {
    let id: UUID
    let imageName: String
    let name: String
    let info: String
    let rating: Double
    let reviews: Int
    let category: String
    let actionText: String

    init(
        id: UUID = UUID(),
        imageName: String,
        name: String,
        info: String,
        rating: Double,
        reviews: Int,
        category: String,
        actionText: String
    ) {
        self.id = id
        self.imageName = imageName
        self.name = name
        self.info = info
        self.rating = rating
        self.reviews = reviews
        self.category = category
        self.actionText = actionText
    }
}
