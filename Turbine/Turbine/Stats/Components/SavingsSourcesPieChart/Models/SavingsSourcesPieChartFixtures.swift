//
//  SavingsSourcesPieChartFixtures.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:45:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:39:13 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Preview fixtures for the Savings Sources pie chart component
//  - Provides deterministic sample data for UI parity
//
//  DATA FLOW:
//  1a) Fixtures ─────snapshot────▶ SavingsSourcesPieChartSnapshot
//  1b) Snapshot ─────summary────▶ SavingsSourcesPieChartSummary
//  1c) Summary ─────preview────▶ SwiftUI Previews
//
//  OBJECTS:
//  ┌────────────────────────────────────┐     ┌────────────────────────────────────┐
//  │ SavingsSourcesPieChartFixtures     │────▶│ SavingsSourcesPieChartSummary      │
//  │ (fixture source)                   │     │ (value type)                       │
//  └────────────────────────────────────┘     └────────────────────────────────────┘
//
//  REFERENCES:
//  - Architecture.md
//
// =============================================================================
//

import SwiftUI

// MARK: - Fixtures

/// Fixture data for previews and local development.
enum SavingsSourcesPieChartFixtures {
    static var periodDescription: String { "Over 365 days" }

    static var snapshot: SavingsSourcesPieChartSnapshot {
        SavingsSourcesPieChartSnapshot(entries: entries, periodDescription: periodDescription)
    }

    static var summary: SavingsSourcesPieChartSummary {
        SavingsSourcesPieChartSummary(snapshot: snapshot)
    }

    static var entries: [SavingsSourcesPieChartEntry] {
        [
            SavingsSourcesPieChartEntry(
                title: "Annual Savings",
                description: "Regular yearly contributions",
                amount: 2847.50,
                color: .blue
            ),
            SavingsSourcesPieChartEntry(
                title: "Investment Returns",
                description: "Portfolio growth and dividends",
                amount: 567.25,
                color: .green
            ),
            SavingsSourcesPieChartEntry(
                title: "Emergency Fund",
                description: "Reserved for unexpected expenses",
                amount: 378.99,
                color: .yellow
            )
        ]
    }
}
