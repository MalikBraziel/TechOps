//
//  FinancialInsightsCardService.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:32:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:46:55 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Fixture-backed service for Financial Insights Card data
//  - Provides deterministic card content for previews and local development
//
//  DATA FLOW:
//  1a) ViewModel ───async request──▶ FinancialInsightsCardService.fetchCard()
//  1b) Service  ─────card────────▶ ViewModel
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────────┐
//  │ FinancialInsightsCardViewModel│────▶│ FinancialInsightsCardService     │
//  │ (consumer)                   │     │ (service)                       │
//  └──────────────────────────────┘     └──────────────────────────────────┘
//
//  REFERENCES:
//  - Architecture.md
//  - Concurrency.md
//
// =============================================================================
//

import Foundation

// MARK: - Fixture Service

/// Default service implementation for financial insights card data.
struct FinancialInsightsCardService: FinancialInsightsCardServiceProtocol {
    func fetchCard() async -> FinancialInsightsCardData {
        FinancialInsightsCardFixtures.sampleCard
    }
}
