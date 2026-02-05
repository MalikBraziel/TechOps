//
//  PortfolioDigestCardService.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:18:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:47:16 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Fixture-backed service for portfolio digest card data
//  - Provides a snapshot for previews and local development
//
//  DATA FLOW:
//  1a) ViewModel ───async request──▶ PortfolioDigestCardService.fetchSnapshot()
//  1b) Service  ─────snapshot────▶ ViewModel
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ PortfolioDigestCardViewModel │────▶│ PortfolioDigestCardService    │
//  │ (consumer)                   │     │ (service)                    │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - Architecture.md
//  - Concurrency.md
//
// =============================================================================
//

import Foundation

// MARK: - Fixture Service

/// Default service implementation for portfolio digest card data.
struct PortfolioDigestCardService: PortfolioDigestCardServiceProtocol {
    func fetchSnapshot() async -> PortfolioDigestSnapshot {
        PortfolioDigestCardFixtures.snapshot
    }
}
