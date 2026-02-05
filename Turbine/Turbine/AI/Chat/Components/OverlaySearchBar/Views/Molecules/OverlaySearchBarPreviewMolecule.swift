//
//  OverlaySearchBarPreviewMolecule.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:38:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:38:00 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Molecule rendering the compact search bar preview
//  - Matches the SwiftUX preview styling for the overlay search bar
//
//  DATA FLOW:
//  1a) Parent View ─────props────▶ OverlaySearchBarPreviewMolecule
//  1b) Molecule ─────compose────▶ Search icon + placeholder text
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ Parent View                  │────▶│ OverlaySearchBarPreviewMolecule│
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

// MARK: - Preview Molecule

/// Compact preview bar that expands into the overlay search experience.
struct OverlaySearchBarPreviewMolecule: View {
    let placeholder: String

    var body: some View {
        HStack(spacing: 8) {
            OverlaySearchBarSearchIconAtom()
            Text(placeholder)
                .font(.system(size: 17, weight: .medium, design: .rounded))
                .foregroundStyle(.secondary)
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 16)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(uiColor: .secondarySystemFill).opacity(0.4))
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(.ultraThickMaterial, lineWidth: 1)
        )
    }
}

#Preview {
    OverlaySearchBarPreviewMolecule(placeholder: "Search in workspace")
        .padding()
}
