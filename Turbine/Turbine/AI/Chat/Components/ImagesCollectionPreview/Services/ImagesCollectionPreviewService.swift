//
//  ImagesCollectionPreviewService.swift
//  Turbine
//
//  Created: February 02, 2026 @ 01:10:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 02, 2026 @ 01:10:00 AM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Fixture-backed service for ImagesCollectionPreview
//  - Provides deterministic preview data for local UI parity
//
//  DATA FLOW:
//  1a) ViewModel ───async request──▶ ImagesCollectionPreviewService.fetchPreviewCardData
//  1b) Service  ─────data────────▶ ViewModel
//
//  OBJECTS:
//  ┌────────────────────────────────────┐     ┌────────────────────────────────────┐
//  │ ImagesCollectionPreviewViewModel   │────▶│ ImagesCollectionPreviewService     │
//  │ (consumer)                         │     │ (service)                            │
//  └────────────────────────────────────┘     └────────────────────────────────────┘
//
//  REFERENCES:
//  - Architecture.md
//
// =============================================================================
//

import Foundation

// MARK: - Fixture Service

/// Default preview service returning fixture-backed card data.
struct ImagesCollectionPreviewService: ImagesCollectionPreviewServiceProtocol {
    func fetchPreviewCardData() async -> ImagesCollectionPreviewCardData {
        ImagesCollectionPreviewFixtures.sampleData
    }
}
