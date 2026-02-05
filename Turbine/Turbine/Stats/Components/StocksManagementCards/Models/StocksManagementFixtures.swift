//
//  StocksManagementFixtures.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:56:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:47:16 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Preview fixtures for StocksManagementCards components
//  - Provides deterministic sample data for UI parity
//
//  DATA FLOW:
//  1a) Fixtures ─────snapshot────▶ StocksManagementSnapshot
//  1b) Snapshot ─────preview────▶ SwiftUI Previews
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ StocksManagementFixtures     │────▶│ StocksManagementSnapshot      │
//  │ (fixture source)             │     │ (value type)                  │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - SwiftUX_Porting_Runbook.md
//  - Architecture.md
//
// =============================================================================
//

import Foundation

// MARK: - Fixtures

/// Fixture values for previews and development.
enum StocksManagementFixtures {
    static var snapshot: StocksManagementSnapshot {
        StocksManagementSnapshot(summary: summary, holdings: holdings, news: news)
    }

    static var summary: StocksPortfolioSummary {
        StocksPortfolioSummary(
            totalValue: 5849.05,
            returnPercentage: 110.28,
            returnTrend: .up,
            date: DateComponents(calendar: .current, year: 2025, month: 6, day: 1).date ?? Date()
        )
    }

    static var holdings: [StocksHolding] {
        [
            StocksHolding(
                symbol: "AAPL",
                company: "Apple Inc.",
                shares: 10,
                currentPrice: 2324.70,
                previousPrice: 2322.45
            ),
            StocksHolding(
                symbol: "META",
                company: "Meta Platforms Inc",
                shares: 5,
                currentPrice: 3524.35,
                previousPrice: 3616.33
            )
        ]
    }

    static var news: [StocksNewsItem] {
        [
            StocksNewsItem(
                category: "AI",
                title: "Tokyo Election Plans Expansion Despite AI Spending Doubts"
            ),
            StocksNewsItem(
                category: "Big Tech",
                title: "Apple Debut in South Carolina changes insurance rates"
            ),
            StocksNewsItem(
                category: "Markets",
                title: "Global Markets Rally as Fed Signals Rate Cut Plans"
            )
        ]
    }
}
