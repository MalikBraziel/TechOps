//
//  OverlaySearchBarSectionHeaderMolecule.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:40:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:40:00 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Molecule rendering a section header for suggestion groups
//
//  DATA FLOW:
//  1a) Parent View ─────props────▶ OverlaySearchBarSectionHeaderMolecule
//  1b) Molecule ─────render────▶ HStack(icon, title)
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ OverlaySearchBarSuggestions  │────▶│ OverlaySearchBarSectionHeader │
//  │ (molecule)                   │     │ (molecule)                   │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - DesignSystem.md
//
// =============================================================================
//

import SwiftUI

// MARK: - Section Header Molecule

/// Section header showing an icon and title for suggestion groups.
struct OverlaySearchBarSectionHeaderMolecule: View {
    let title: String
    let icon: String

    // MARK: - UI Composition

    var body: some View {
        HStack(spacing: 6) {
            Image(systemName: icon)
            Text(title)
        }
        .font(.system(size: 15, weight: .regular, design: .rounded))
        .foregroundStyle(.secondary)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    OverlaySearchBarSectionHeaderMolecule(
        title: "Recents",
        icon: "clock.arrow.trianglehead.counterclockwise.rotate.90"
    )
    .padding()
}
