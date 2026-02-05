//
//  ImagesCollectionPreviewFixtures.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:37:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 02, 2026 @ 01:10:58 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Preview fixtures for ImagesCollectionPreview components
//  - Supplies deterministic card data for SwiftUI previews
//
//  DATA FLOW:
//  1a) Fixtures ─────data────▶ ImagesCollectionPreviewCardData
//  1b) Models ─────preview───▶ SwiftUI Previews
//
//  OBJECTS:
//  ┌────────────────────────────────────────┐     ┌────────────────────────────────────────┐
//  │ ImagesCollectionPreviewFixtures        │────▶│ ImagesCollectionPreviewCardData        │
//  │ (fixture source)                       │     │ (value type)                            │
//  └────────────────────────────────────────┘     └────────────────────────────────────────┘
//
//  REFERENCES:
//  - Architecture.md
//
// =============================================================================
//

import Foundation

// MARK: - Fixtures

/// Fixture values for previews and development.
enum ImagesCollectionPreviewFixtures {
    static let sampleData = ImagesCollectionPreviewCardData(
        title: "Nature",
        itemCount: 5,
        creatorHandle: "Creator",
        images: [
            .resource(name: "100"),
            .resource(name: "101"),
            .resource(name: "102"),
            .resource(name: "103"),
            .resource(name: "104")
        ]
    )
}
