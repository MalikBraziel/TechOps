//
//  FinancialInsightsCardServiceProtocol.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:32:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:46:55 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Defines the service boundary for Financial Insights Card data
//  - Supports async card retrieval for the Stats feature
//
//  DATA FLOW:
//  1a) ViewModel ───async request──▶ FinancialInsightsCardServiceProtocol.fetchCard()
//  1b) Service  ─────card────────▶ ViewModel
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────────┐
//  │ FinancialInsightsCardViewModel│────▶│ FinancialInsightsCardService     │
//  │ (consumer)                   │     │ (protocol)                      │
//  └──────────────────────────────┘     └──────────────────────────────────┘
//
//  REFERENCES:
//  - Architecture.md
//  - Concurrency.md
//
// =============================================================================
//

import Foundation

// MARK: - Service Protocol

/// Provides financial insights card data for the stats feature.
protocol FinancialInsightsCardServiceProtocol: Sendable {
    /// Fetches the card content displayed by the component.
    func fetchCard() async -> FinancialInsightsCardData
}
