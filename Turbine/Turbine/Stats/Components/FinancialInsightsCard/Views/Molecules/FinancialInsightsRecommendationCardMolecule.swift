//
//  FinancialInsightsRecommendationCardMolecule.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:32:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:47:04 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Molecule for a single recommendation card
//  - Displays priority, title, and description copy
//
//  DATA FLOW:
//  1a) Parent View ─────props────▶ FinancialInsightsRecommendationCardMolecule
//  1b) Molecule ─────compose────▶ Text + Icon
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌────────────────────────────────────────┐
//  │ Parent View                  │────▶│ FinancialInsightsRecommendationCardMol │
//  │ (molecule/compound)          │     │ (molecule)                             │
//  └──────────────────────────────┘     └────────────────────────────────────────┘
//
//  REFERENCES:
//  - DesignSystem.md
//  - Architecture.md
//
// =============================================================================
//

import SwiftUI

// MARK: - Recommendation Card Molecule

/// Card molecule showing a single recommendation.
struct FinancialInsightsRecommendationCardMolecule: View {
    let recommendation: FinancialInsightsRecommendation

    // MARK: - UI Composition

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack(spacing: 4) {
                Image(systemName: recommendation.priority.iconName)
                Text(recommendation.priority.title)
            }
            .font(.system(.caption, weight: .medium))
            .foregroundStyle(.secondary)

            VStack(alignment: .leading, spacing: 4) {
                Text(recommendation.title)
                    .font(.system(.subheadline, weight: .medium))
                    .foregroundStyle(.primary)
                Text(recommendation.text)
                    .font(.system(.footnote, weight: .regular))
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            }
        }
        .padding(12)
        .frame(maxWidth: .infinity, alignment: .leading)
        .frame(width: 300)
        .background(Color.gray.opacity(0.1))
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    FinancialInsightsRecommendationCardMolecule(
        recommendation: FinancialInsightsRecommendation(
            priority: .medium,
            title: "Create a debt payoff plan",
            text: "You have $235,000 in debt, 10.6% of which is not building towards an asset"
        )
    )
    .padding()
}
