//
//  FinancialInsightsInsightMolecule.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:32:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:47:00 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Molecule for the insight section of the Financial Insights Card
//  - Composes the progress ring, type badge, and insight copy
//
//  DATA FLOW:
//  1a) Parent View ─────props────▶ FinancialInsightsInsightMolecule
//  1b) Molecule ─────compose────▶ Atoms + Text
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────────┐
//  │ Parent View                  │────▶│ FinancialInsightsInsightMolecule │
//  │ (compound)                   │     │ (molecule)                        │
//  └──────────────────────────────┘     └──────────────────────────────────┘
//
//  REFERENCES:
//  - DesignSystem.md
//  - Architecture.md
//
// =============================================================================
//

import SwiftUI

// MARK: - Insight Molecule

/// Insight section containing the progress ring, badge, and insight text.
struct FinancialInsightsInsightMolecule: View {
    let type: FinancialInsightsCardType
    let score: Int
    let insightText: String

    // MARK: - UI Composition

    var body: some View {
        HStack(spacing: 16) {
            FinancialInsightsProgressRingAtom(
                score: score,
                color: type.accentColor
            )

            VStack(alignment: .leading, spacing: 12) {
                FinancialInsightsTypeBadgeAtom(
                    title: type.title,
                    color: type.accentColor
                )

                Text(insightText)
                    .font(.system(.subheadline, weight: .regular))
                    .foregroundStyle(.primary)
                    .lineLimit(3)
                    .multilineTextAlignment(.leading)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    FinancialInsightsInsightMolecule(
        type: .moderate,
        score: 6,
        insightText: "You're making progress, but there's always room for improvement. Keep going!"
    )
    .padding()
}
