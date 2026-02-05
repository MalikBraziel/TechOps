//
//  GroupEventCardServiceProtocol.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:40:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:33:54 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Defines the service boundary for group event card data
//  - Supports async event retrieval for the Stats feature
//
//  DATA FLOW:
//  1a) ViewModel ───async request──▶ GroupEventCardServiceProtocol.fetchEvent()
//  1b) Service  ─────event───────▶ ViewModel
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ GroupEventCardViewModel      │────▶│ GroupEventCardServiceProtocol │
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

/// Provides group event card data for the Stats feature.
protocol GroupEventCardServiceProtocol: Sendable {
    /// Fetches the event data displayed by the card.
    func fetchEvent() async -> GroupEventCardEventData
}
