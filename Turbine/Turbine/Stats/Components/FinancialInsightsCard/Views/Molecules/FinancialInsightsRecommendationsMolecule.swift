//
//  FinancialInsightsRecommendationsMolecule.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:32:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:47:04 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Molecule for the recommendations section
//  - Renders the section header and horizontal carousel
//
//  DATA FLOW:
//  1a) Parent View ─────props────▶ FinancialInsightsRecommendationsMolecule
//  1b) Molecule ─────compose────▶ Recommendation Card Molecules
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────────┐
//  │ Parent View                  │────▶│ FinancialInsightsRecommendations  │
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

// MARK: - Recommendations Molecule

/// Recommendations carousel with a section header.
struct FinancialInsightsRecommendationsMolecule: View {
    let recommendations: [FinancialInsightsRecommendation]

    // MARK: - UI Composition

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Recommended next steps")
                .font(.system(.footnote, weight: .medium))
                .foregroundStyle(.secondary)
                .padding(.leading, 16)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 12) {
                    ForEach(recommendations) { recommendation in
                        FinancialInsightsRecommendationCardMolecule(recommendation: recommendation)
                    }
                }
                .padding(.horizontal, 16)
                .scrollTargetLayout()
            }
            .scrollTargetBehavior(.paging)
        }
    }
}

#Preview {
    FinancialInsightsRecommendationsMolecule(
        recommendations: FinancialInsightsCardFixtures.sampleRecommendations
    )
    .padding()
}
