//
//  StocksManagementCardHeaderMolecule.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:08:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:55:28 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Molecule for card headers with optional action controls
//
//  DATA FLOW:
//  1a) Parent View ─────props────▶ StocksManagementCardHeaderMolecule
//  1b) Molecule ─────render────▶ Title + Actions
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ Parent View                  │────▶│ StocksManagementCardHeader    │
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

// MARK: - Card Header Molecule

/// Header row used in cards to display a title and optional actions.
struct StocksManagementCardHeaderMolecule: View {
    let title: String
    var showsControls: Bool = true
    var onAdd: () -> Void = {}
    var onMenu: () -> Void = {}

    // MARK: - UI Composition

    var body: some View {
        HStack {
            Text(title)
                .font(.system(.subheadline, weight: .medium))
                .foregroundStyle(.secondary)
            Spacer()
            if showsControls {
                HStack(spacing: 10) {
                    StocksManagementIconButtonAtom(systemName: "plus", action: onAdd)
                    StocksManagementIconButtonAtom(systemName: "ellipsis", action: onMenu)
                }
            }
        }
    }
}
