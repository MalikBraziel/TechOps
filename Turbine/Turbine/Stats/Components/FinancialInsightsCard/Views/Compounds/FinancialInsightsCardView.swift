//
//  FinancialInsightsCardView.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:32:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:46:59 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Pure view rendering the Financial Insights Card UI
//  - Composes the headline, insight, and recommendations sections
//
//  DATA FLOW:
//  1a) Compound ─────card────▶ FinancialInsightsCardView
//  1b) View ─────compose────▶ Atoms + Molecules
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────────┐
//  │ FinancialInsightsCardCompound│────▶│ FinancialInsightsCardView        │
//  │ (compound)                   │     │ (view)                            │
//  └──────────────────────────────┘     └──────────────────────────────────┘
//
//  REFERENCES:
//  - DesignSystem.md
//  - Architecture.md
//
// =============================================================================
//

import SwiftUI

// MARK: - Financial Insights Card View

/// Pure view composing the financial insights card UI.
struct FinancialInsightsCardView: View {
    let card: FinancialInsightsCardData

    // MARK: - UI Composition

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            FinancialInsightsHeadlineAtom(
                iconName: card.headlineIconName,
                headline: card.headline
            )

            VStack(alignment: .leading, spacing: 16) {
                FinancialInsightsInsightMolecule(
                    type: card.type,
                    score: card.score,
                    insightText: card.insightText
                )
                .padding([.top, .horizontal], 16)

                FinancialInsightsRecommendationsMolecule(
                    recommendations: card.recommendations
                )
                .padding(.bottom, 16)
            }
            .background(.background)
            .clipShape(RoundedRectangle(cornerRadius: 16))
            .overlay {
                RoundedRectangle(cornerRadius: 16)
                    .stroke(.gray.opacity(0.17), lineWidth: 1)
            }
        }
    }
}

#Preview {
    FinancialInsightsCardView(card: FinancialInsightsCardFixtures.sampleCard)
        .padding()
}
