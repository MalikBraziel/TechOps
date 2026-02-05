//
//  PortfolioDigestDateRowMolecule.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:23:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 02, 2026 @ 12:24:08 AM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Molecule rendering the date row with a calendar icon
//  - Provides a formatted date string for the card header
//
//  DATA FLOW:
//  1a) Parent View ─────date────▶ PortfolioDigestDateRowMolecule
//  1b) Molecule ─────compose────▶ PortfolioDigestIconLabelAtom
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ Parent View                  │────▶│ PortfolioDigestDateRowMol     │
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

// MARK: - Date Row Molecule

/// Date row with calendar icon used in the portfolio digest card.
struct PortfolioDigestDateRowMolecule: View {
    let date: Date

    private var formattedDate: String {
        date.formatted(.dateTime.day().month().year())
    }

    // MARK: - UI Composition

    var body: some View {
        PortfolioDigestIconLabelAtom(iconName: "calendar", text: formattedDate)
    }
}

#Preview {
    PortfolioDigestDateRowMolecule(date: PortfolioDigestCardFixtures.previewDate)
        .padding()
}
