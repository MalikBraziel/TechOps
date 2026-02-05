//
//  ImagesCollectionPreviewServiceProtocol.swift
//  Turbine
//
//  Created: February 02, 2026 @ 01:10:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 02, 2026 @ 01:10:00 AM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Defines the service boundary for images collection preview data
//  - Supports loading curated image preview card content
//
//  DATA FLOW:
//  1a) ViewModel ───async request──▶ ImagesCollectionPreviewServiceProtocol.fetchPreviewCardData
//  1b) Service  ─────data────────▶ ViewModel
//
//  OBJECTS:
//  ┌────────────────────────────────────┐     ┌──────────────────────────────────────────┐
//  │ ImagesCollectionPreviewViewModel   │────▶│ ImagesCollectionPreviewServiceProtocol   │
//  │ (consumer)                         │     │ (protocol)                                │
//  └────────────────────────────────────┘     └──────────────────────────────────────────┘
//
//  REFERENCES:
//  - Architecture.md
//  - SwiftUXRefactoring.md
//
// =============================================================================
//

import Foundation

// MARK: - Service Protocol

/// Provides preview card data for the images collection preview component.
protocol ImagesCollectionPreviewServiceProtocol: Sendable {
    /// Fetches preview card data for the collection.
    func fetchPreviewCardData() async -> ImagesCollectionPreviewCardData
}
