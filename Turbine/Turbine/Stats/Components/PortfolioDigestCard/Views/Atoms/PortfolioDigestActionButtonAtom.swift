//
//  PortfolioDigestActionButtonAtom.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:22:30 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:55:28 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Atom for rendering the card action button icon
//  - Used in the balance row to add to the portfolio
//
//  DATA FLOW:
//  1a) Parent View ─────action────▶ PortfolioDigestActionButtonAtom
//  1b) Atom ─────render───────▶ Button(icon)
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ Parent View                  │────▶│ PortfolioDigestActionButton  │
//  │ (molecule/compound)          │     │ (atom)                        │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - DesignSystem.md
//  - Architecture.md
//
// =============================================================================
//

import SwiftUI

// MARK: - Action Button Atom

/// Circular plus icon button used in the balance row.
struct PortfolioDigestActionButtonAtom: View {
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Image(systemName: "plus.circle")
                .font(.system(.title2, weight: .regular))
                .foregroundStyle(.primary)
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    PortfolioDigestActionButtonAtom(action: {})
        .padding()
}
