//
//  FinancialInsightsCardFixtures.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:32:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:46:55 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Preview fixtures for the Financial Insights Card component
//  - Provides deterministic sample data for UI parity
//
//  DATA FLOW:
//  1a) Fixtures ─────card────▶ FinancialInsightsCardState
//  1b) State ─────preview────▶ SwiftUI Previews
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────────┐
//  │ FinancialInsightsCardFixtures│────▶│ FinancialInsightsCardData         │
//  │ (fixture source)             │     │ (value type)                      │
//  └──────────────────────────────┘     └──────────────────────────────────┘
//
//  REFERENCES:
//  - Architecture.md
//
// =============================================================================
//

import Foundation

// MARK: - Fixtures

/// Fixture values for previews and local development.
enum FinancialInsightsCardFixtures {
    static var sampleRecommendations: [FinancialInsightsRecommendation] {
        [
            FinancialInsightsRecommendation(
                priority: .medium,
                title: "Create a debt payoff plan",
                text: "You have $235,000 in debt, 10.6% of which is not building towards an asset"
            ),
            FinancialInsightsRecommendation(
                priority: .low,
                title: "Review Subscriptions",
                text: "You could save $50/month by optimizing subscriptions"
            )
        ]
    }

    static var sampleCard: FinancialInsightsCardData {
        FinancialInsightsCardData(
            headlineIconName: "waveform.path.ecg",
            headline: "Financial wellness",
            type: .moderate,
            score: 6,
            insightText: "You're making progress, but there's always room for improvement. Keep going!",
            recommendations: sampleRecommendations
        )
    }
}
