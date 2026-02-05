//
//  ShowPreviewCardFooterMolecule.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:45:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 02, 2026 @ 12:45:00 AM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Molecule for the footer action row in ShowPreviewCard
//  - Composes the primary action and add buttons
//
//  DATA FLOW:
//  1a) Parent View ─────props────▶ ShowPreviewCardFooterMolecule
//  1b) Molecule ─────compose────▶ Action + Add atoms
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ Parent View                  │────▶│ ShowPreviewCardFooterMolecule │
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

// MARK: - Footer Molecule

/// Footer row with the action and add buttons.
struct ShowPreviewCardFooterMolecule: View {
    let actionTitle: String
    let isAdded: Bool
    let onActionTapped: () -> Void
    let onAddTapped: () -> Void

    var body: some View {
        HStack {
            ShowPreviewCardActionButtonAtom(title: actionTitle, onTap: onActionTapped)
            Spacer()
            ShowPreviewCardAddButtonAtom(isAdded: isAdded, onTap: onAddTapped)
        }
    }
}

#Preview {
    ShowPreviewCardFooterMolecule(
        actionTitle: "Trailer",
        isAdded: false,
        onActionTapped: {},
        onAddTapped: {}
    )
    .padding()
    .background(Color.black)
}
