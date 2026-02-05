//
//  OverlaySearchBarSuggestionItemMolecule.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:40:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:40:00 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Molecule rendering a single suggestion row
//  - Shows icon, title, and disclosure indicator
//
//  DATA FLOW:
//  1a) Parent View ─────props────▶ OverlaySearchBarSuggestionItemMolecule
//  1b) Molecule ─────event────▶ onTap action
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ OverlaySearchBarSuggestions  │────▶│ OverlaySearchBarSuggestionItem│
//  │ (molecule)                   │     │ (molecule)                   │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - DesignSystem.md
//
// =============================================================================
//

import SwiftUI

// MARK: - Suggestion Item Molecule

/// Suggestion row showing an icon, title, and disclosure indicator.
struct OverlaySearchBarSuggestionItemMolecule: View {
    let suggestion: OverlaySearchBarSuggestion
    let onTap: () -> Void

    init(
        suggestion: OverlaySearchBarSuggestion,
        onTap: @escaping () -> Void = {}
    ) {
        self.suggestion = suggestion
        self.onTap = onTap
    }

    // MARK: - UI Composition

    var body: some View {
        Button(action: onTap) {
            HStack(spacing: 6) {
                Image(systemName: suggestion.icon)
                    .foregroundStyle(suggestion.tint.color)

                Text(suggestion.title)
                    .foregroundStyle(.primary)

                Spacer()

                Image(systemName: "arrow.up.right")
                    .foregroundStyle(.secondary)
            }
            .font(.system(size: 17, weight: .regular, design: .rounded))
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    OverlaySearchBarSuggestionItemMolecule(
        suggestion: OverlaySearchBarSuggestion(
            title: "Weekend trip plan",
            icon: "beach.umbrella.fill",
            tint: .pink
        )
    )
    .padding()
}
