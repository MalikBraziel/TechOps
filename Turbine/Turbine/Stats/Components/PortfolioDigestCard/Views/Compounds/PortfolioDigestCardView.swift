//
//  PortfolioDigestCardView.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:29:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 02, 2026 @ 12:22:48 AM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Pure view rendering the portfolio digest card UI
//  - Composes header, greeting, delta, and balance sections
//
//  DATA FLOW:
//  1a) Compound ─────state────▶ PortfolioDigestCardView
//  1b) View ─────compose────▶ Header + Details + Balance
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ PortfolioDigestCardCompound  │────▶│ PortfolioDigestCardView       │
//  │ (compound)                   │     │ (view)                        │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - DesignSystem.md
//  - Architecture.md
//
// =============================================================================
//

import SwiftUI

// MARK: - Portfolio Digest Card View

/// Pure view composing the portfolio digest card UI.
struct PortfolioDigestCardView: View {
    let summary: PortfolioDigestCardSummary
    let onActionTapped: () -> Void

    init(summary: PortfolioDigestCardSummary, onActionTapped: @escaping () -> Void = {}) {
        self.summary = summary
        self.onActionTapped = onActionTapped
    }

    // MARK: - UI Composition

    var body: some View {
        VStack(alignment: .leading, spacing: 32) {
            PortfolioDigestDateRowMolecule(date: summary.date)

            VStack(alignment: .leading, spacing: 2) {
                PortfolioDigestGreetingMolecule(
                    greeting: summary.greeting,
                    userName: summary.userName,
                    updates: summary.updates
                )

                PortfolioDigestDeltaMolecule(dailyDelta: summary.dailyDelta)
                    .padding(.top, 6)
            }

            PortfolioDigestBalanceCardMolecule(
                balance: summary.balance,
                onActionTapped: onActionTapped
            )
        }
        .padding(.vertical, 12)
        .padding(.horizontal)
        .background(Color.gray.opacity(0.1))
        .cornerRadius(12)
    }
}

#Preview {
    PortfolioDigestCardView(summary: PortfolioDigestCardFixtures.summary)
        .padding()
}
