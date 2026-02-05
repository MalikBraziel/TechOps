//
//  StocksManagementModels.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:55:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:39:20 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Domain models for the StocksManagementCards component
//  - Defines portfolio summaries, holdings, and related news items
//
//  DATA FLOW:
//  1a) Service ─────snapshot────▶ StocksManagementState
//  1b) State ─────props────▶ StocksManagementCardsView
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ StocksManagementService      │────▶│ StocksManagementSnapshot      │
//  │ (service)                    │     │ (value type)                  │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - Architecture.md
//  - SwiftUX_Porting_Runbook.md
//
// =============================================================================
//

import Foundation

// MARK: - Snapshot Model

/// Snapshot containing summary, holdings, and news for the stocks management cards.
struct StocksManagementSnapshot: Sendable {
    var summary: StocksPortfolioSummary
    var holdings: [StocksHolding]
    var news: [StocksNewsItem]
}

// MARK: - Summary Model

/// Summary metrics for the total portfolio card.
struct StocksPortfolioSummary: Sendable {
    var totalValue: Double
    var returnPercentage: Double
    var returnTrend: StocksReturnTrend
    var date: Date
}

/// Directional trend for return metrics.
enum StocksReturnTrend: String, Sendable {
    case up
    case down

    var isPositive: Bool {
        self == .up
    }

    var iconName: String {
        switch self {
        case .up:
            return "chart.line.uptrend.xyaxis"
        case .down:
            return "chart.line.downtrend.xyaxis"
        }
    }
}

// MARK: - Holding Model

/// Single holding row displayed in the holdings list.
struct StocksHolding: Identifiable, Sendable {
    let id: UUID
    var symbol: String
    var company: String
    var shares: Int
    var currentPrice: Double
    var previousPrice: Double

    init(
        id: UUID = UUID(),
        symbol: String,
        company: String,
        shares: Int,
        currentPrice: Double,
        previousPrice: Double
    ) {
        self.id = id
        self.symbol = symbol
        self.company = company
        self.shares = shares
        self.currentPrice = currentPrice
        self.previousPrice = previousPrice
    }

    /// Absolute price change since the previous period.
    var priceDifference: Double {
        currentPrice - previousPrice
    }

    /// Percentage change relative to the previous period.
    var percentageChange: Double {
        guard previousPrice != 0 else { return 0 }
        return (priceDifference / previousPrice) * 100
    }
}

// MARK: - News Item Model

/// Related news headline for the portfolio.
struct StocksNewsItem: Identifiable, Sendable {
    let id: UUID
    var category: String
    var title: String

    init(id: UUID = UUID(), category: String, title: String) {
        self.id = id
        self.category = category
        self.title = title
    }
}
