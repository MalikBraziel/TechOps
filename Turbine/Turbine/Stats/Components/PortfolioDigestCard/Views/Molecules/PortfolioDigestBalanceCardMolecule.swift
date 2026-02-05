//
//  PortfolioDigestBalanceCardMolecule.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:26:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 02, 2026 @ 12:23:22 AM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Molecule rendering the balance card row
//  - Shows total balance and action button
//
//  DATA FLOW:
//  1a) Parent View ─────balance────▶ PortfolioDigestBalanceCardMolecule
//  1b) Molecule ─────render────▶ Text + Action Button
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ Parent View                  │────▶│ PortfolioDigestBalanceCardMol │
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

// MARK: - Balance Card Molecule

/// Balance card row showing the total balance and add button.
struct PortfolioDigestBalanceCardMolecule: View {
    let balance: Double
    let onActionTapped: () -> Void

    init(balance: Double, onActionTapped: @escaping () -> Void = {}) {
        self.balance = balance
        self.onActionTapped = onActionTapped
    }

    // MARK: - UI Composition

    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 6) {
                Text("Your total balance")
                    .font(.system(.subheadline, weight: .regular))
                    .foregroundStyle(.secondary)
                Text(balance.formatted(.currency(code: "USD")))
                    .font(.system(.title2, weight: .semibold))
                    .foregroundStyle(.primary)
            }

            Spacer()

            PortfolioDigestActionButtonAtom(action: onActionTapped)
        }
        .padding(12)
        .background(.background)
        .cornerRadius(12)
    }
}

#Preview {
    PortfolioDigestBalanceCardMolecule(balance: 15420.50)
        .padding()
}
