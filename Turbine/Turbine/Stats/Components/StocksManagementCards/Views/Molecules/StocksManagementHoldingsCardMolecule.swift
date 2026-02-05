//
//  StocksManagementHoldingsCardMolecule.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:10:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:55:28 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Molecule for the holdings card with header and list rows
//
//  DATA FLOW:
//  1a) Parent View ─────holdings────▶ StocksManagementHoldingsCardMolecule
//  1b) Molecule ─────render────▶ Header + Holdings list
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ Parent View                  │────▶│ StocksManagementHoldingsCard  │
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

// MARK: - Holdings Card Molecule

/// Card showing a list of stock holdings.
struct StocksManagementHoldingsCardMolecule: View {
    let holdings: [StocksHolding]
    var onAdd: () -> Void = {}
    var onMenu: () -> Void = {}

    // MARK: - UI Composition

    var body: some View {
        VStack(spacing: 10) {
            StocksManagementCardHeaderMolecule(
                title: "Holdings",
                showsControls: true,
                onAdd: onAdd,
                onMenu: onMenu
            )
            .padding(.top, 12)
            .padding(.horizontal, 12)

            VStack(spacing: 0) {
                ForEach(Array(holdings.enumerated()), id: \.element.id) { index, holding in
                    StocksManagementHoldingRowMolecule(holding: holding)
                    if index < holdings.count - 1 {
                        Divider()
                            .padding(.leading, 12)
                    }
                }
            }
            .background(Color(uiColor: .systemBackground))
            .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
            .padding(.horizontal, 4)
            .padding(.bottom, 4)
        }
        .background(Color(uiColor: .systemGray6))
        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
    }
}
