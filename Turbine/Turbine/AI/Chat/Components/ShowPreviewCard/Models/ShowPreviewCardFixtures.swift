//
//  ShowPreviewCardFixtures.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:45:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 02, 2026 @ 01:11:15 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Preview fixtures for ShowPreviewCard components
//  - Provides deterministic sample data for UI parity
//
//  DATA FLOW:
//  1a) Fixtures ─────data────▶ ShowPreviewCardState
//  1b) State ─────preview────▶ SwiftUI Previews
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

// MARK: - Fixtures

/// Fixture values for previews and development.
enum ShowPreviewCardFixtures {
    static let sampleCards: [ShowPreviewCardData] = [
        ShowPreviewCardData(
            imageName: "102",
            name: "Echoes of Aether",
            info: "In a floating archipelago powered by ancient elemental forces, a teenage inventor unearths a forbidden relic that could tip the balance between peace and total collapse.",
            rating: 4.8,
            reviews: 2584,
            category: "Fantasy",
            actionText: "Trailer"
        ),
        ShowPreviewCardData(
            imageName: "101",
            name: "Chalk Dust",
            info: "A burned-out detective is forced to teach a criminology class at a failing community college, only to discover one of his students may be connected to an unsolved series of crimes.",
            rating: 3.8,
            reviews: 33,
            category: "Drama",
            actionText: "Latest episode"
        ),
        ShowPreviewCardData(
            imageName: "100",
            name: "Signal Drift",
            info: "After a deep-space relay goes silent, a linguist joins a salvage crew and finds a broadcast that seems to predict their every move.",
            rating: 4.2,
            reviews: 742,
            category: "Sci-Fi",
            actionText: "Watch now"
        ),
        ShowPreviewCardData(
            imageName: "103",
            name: "Wild Bloom",
            info: "A restaurateur returns to her coastal hometown to reopen a family bistro, only to uncover a decades-old secret tied to the town's most beloved festival.",
            rating: 4.5,
            reviews: 1180,
            category: "Romance",
            actionText: "See menu"
        ),
        ShowPreviewCardData(
            imageName: "104",
            name: "Hard Reset",
            info: "A cybersecurity analyst hunts the architect of a citywide blackout while the culprit leaves clues inside the very system she's sworn to protect.",
            rating: 4.1,
            reviews: 512,
            category: "Thriller",
            actionText: "Start now"
        )
    ]

    static var sampleCard: ShowPreviewCardData {
        sampleCards.first ?? ShowPreviewCardData(
            imageName: "102",
            name: "Sample Show",
            info: "Sample description for preview data.",
            rating: 4.2,
            reviews: 120,
            category: "Drama",
            actionText: "Trailer"
        )
    }
}
