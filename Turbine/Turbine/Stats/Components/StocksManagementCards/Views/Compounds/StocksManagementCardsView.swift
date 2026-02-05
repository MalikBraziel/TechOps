//
//  StocksManagementCardsView.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:12:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:55:28 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Pure view rendering the StocksManagementCards layout
//  - Composes summary, holdings, and related news sections
//
//  DATA FLOW:
//  1a) Compound ─────snapshot────▶ StocksManagementCardsView
//  1b) View ─────compose────▶ Summary + Holdings + News
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ StocksManagementCardsComp    │────▶│ StocksManagementCardsView     │
//  │ (compound)                   │     │ (view)                        │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - DesignSystem.md
//  - SwiftUX_Porting_Runbook.md
//
// =============================================================================
//

import SwiftUI

// MARK: - Stocks Management Cards View

/// View composing the total portfolio, holdings, and related news cards.
struct StocksManagementCardsView: View {
    let snapshot: StocksManagementSnapshot
    var onAddHolding: () -> Void
    var onHoldingsMenu: () -> Void
    var onNewsSelected: (StocksNewsItem) -> Void

    // MARK: - UI Composition

    var body: some View {
        VStack(spacing: 16) {
            StocksManagementSummaryCardMolecule(summary: snapshot.summary)
            StocksManagementHoldingsCardMolecule(
                holdings: snapshot.holdings,
                onAdd: onAddHolding,
                onMenu: onHoldingsMenu
            )
            StocksManagementRelatedNewsMolecule(
                items: snapshot.news,
                onSelect: onNewsSelected
            )
        }
    }
}

#Preview {
    StocksManagementCardsView(
        snapshot: StocksManagementFixtures.snapshot,
        onAddHolding: {},
        onHoldingsMenu: {},
        onNewsSelected: { _ in }
    )
    .padding()
}
