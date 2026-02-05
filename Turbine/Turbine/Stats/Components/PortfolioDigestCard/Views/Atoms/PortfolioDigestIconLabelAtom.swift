//
//  PortfolioDigestIconLabelAtom.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:22:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 02, 2026 @ 12:21:54 AM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Atom for rendering an icon paired with a single line of text
//  - Used for the date row in the portfolio digest card
//
//  DATA FLOW:
//  1a) Parent View ─────props────▶ PortfolioDigestIconLabelAtom
//  1b) Atom ─────render───────▶ HStack(icon, text)
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ Parent View                  │────▶│ PortfolioDigestIconLabelAtom │
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

// MARK: - Icon Label Atom

/// Icon + caption row used in the portfolio digest card header.
struct PortfolioDigestIconLabelAtom: View {
    let iconName: String
    let text: String

    var body: some View {
        HStack(spacing: 4) {
            Image(systemName: iconName)
                .font(.system(.subheadline, weight: .regular))
                .foregroundStyle(.secondary)
            Text(text)
                .font(.system(.subheadline, weight: .regular))
                .foregroundStyle(.secondary)
        }
    }
}

#Preview {
    PortfolioDigestIconLabelAtom(iconName: "calendar", text: "Jun 1, 2025")
        .padding()
}
