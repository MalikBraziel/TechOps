//
//  PortfolioDigestCardFixtures.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:11:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:55:28 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Preview fixtures for PortfolioDigestCard components
//  - Provides deterministic sample data for UI parity
//
//  DATA FLOW:
//  1a) Fixtures ─────snapshot────▶ PortfolioDigestCardSummary
//  1b) Summary ─────preview────▶ SwiftUI Previews
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ PortfolioDigestCardFixtures  │────▶│ PortfolioDigestCardSummary    │
//  │ (fixture source)             │     │ (value type)                 │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - Architecture.md
//
// =============================================================================
//

import Foundation

// MARK: - Fixtures

/// Fixture values for previews and development.
enum PortfolioDigestCardFixtures {
    private static var calendar: Calendar {
        var calendar = Calendar(identifier: .gregorian)
        calendar.timeZone = TimeZone(identifier: "America/New_York") ?? .current
        return calendar
    }

    static var previewDate: Date {
        var components = DateComponents()
        components.year = 2025
        components.month = 6
        components.day = 1
        components.hour = 9
        components.minute = 17
        return calendar.date(from: components) ?? Date()
    }

    static var updates: [PortfolioDigestUpdate] {
        [
            PortfolioDigestUpdate(message: "Your stocks went up 2.5% today"),
            PortfolioDigestUpdate(message: "$AAPL dividends are coming up"),
            PortfolioDigestUpdate(message: "Portfolio is up 12% this month"),
            PortfolioDigestUpdate(message: "Your assets rate is higher than 80% of other users")
        ]
    }

    static var snapshot: PortfolioDigestSnapshot {
        PortfolioDigestSnapshot(
            date: previewDate,
            userName: "Michael",
            balance: 15420.50,
            dailyDelta: 1358.11,
            updates: updates
        )
    }

    static var summary: PortfolioDigestCardSummary {
        PortfolioDigestCardSummary(snapshot: snapshot, calendar: calendar)
    }
}
