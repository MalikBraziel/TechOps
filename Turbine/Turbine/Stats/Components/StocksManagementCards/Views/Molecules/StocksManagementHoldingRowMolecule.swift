//
//  StocksManagementHoldingRowMolecule.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:10:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:55:28 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Molecule for rendering a single holding row
//  - Displays ticker, shares, company name, and price change
//
//  DATA FLOW:
//  1a) Parent View ─────holding────▶ StocksManagementHoldingRowMolecule
//  1b) Molecule ─────render────▶ Holding layout
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ Parent View                  │────▶│ StocksManagementHoldingRow    │
//  │ (compound)                   │     │ (molecule)                    │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - DesignSystem.md
//  - Architecture.md
//
// =============================================================================
//

import SwiftUI

// MARK: - Holding Row Molecule

/// Row displaying the details for a single stock holding.
struct StocksManagementHoldingRowMolecule: View {
    let holding: StocksHolding

    // MARK: - UI Composition

    var body: some View {
        HStack(alignment: .bottom) {
            VStack(alignment: .leading, spacing: 4) {
                HStack(spacing: 6) {
                    StocksManagementTagPillAtom(text: holding.symbol)

                    Text("\(holding.shares) shares")
                        .font(.system(.footnote, weight: .regular))
                        .foregroundStyle(.secondary)
                }

                Text(holding.company)
                    .font(.system(.headline, weight: .regular))
            }

            Spacer()

            VStack(alignment: .trailing, spacing: 4) {
                Text("$\(holding.currentPrice, specifier: "%.2f")")
                    .font(.system(.headline, weight: .medium))

                StocksManagementChangeIndicatorMolecule(
                    difference: holding.priceDifference,
                    percentage: holding.percentageChange
                )
            }
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 12)
    }
}
