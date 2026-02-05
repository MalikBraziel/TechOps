//
//  PortfolioDigestCardServiceProtocol.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:12:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:47:16 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Defines the service boundary for portfolio digest card data
//  - Supports async snapshot retrieval for the Stats feature
//
//  DATA FLOW:
//  1a) ViewModel ───async request──▶ PortfolioDigestCardServiceProtocol.fetchSnapshot()
//  1b) Service  ─────snapshot────▶ ViewModel
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ PortfolioDigestCardViewModel │────▶│ PortfolioDigestCardServiceProtocol │
//  │ (consumer)                   │     │ (protocol)                         │
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

/// Provides portfolio digest snapshot data for the Stats feature.
protocol PortfolioDigestCardServiceProtocol: Sendable {
    /// Fetches the snapshot displayed by the portfolio digest card component.
    func fetchSnapshot() async -> PortfolioDigestSnapshot
}
