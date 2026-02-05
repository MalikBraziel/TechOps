//
//  OverlaySearchBarSuggestionsListMolecule.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:41:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:41:00 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Molecule rendering the suggestion list with section headers
//  - Composes section headers and suggestion item molecules
//
//  DATA FLOW:
//  1a) Parent View ─────props────▶ OverlaySearchBarSuggestionsListMolecule
//  1b) Molecule ─────event────▶ onSuggestionTap
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ OverlaySearchBarView         │────▶│ OverlaySearchBarSuggestions   │
//  │ (view)                       │     │ (molecule)                   │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - DesignSystem.md
//
// =============================================================================
//

import SwiftUI

// MARK: - Suggestions List Molecule

/// Suggestion list with section headers and suggestion items.
struct OverlaySearchBarSuggestionsListMolecule: View {
    let sections: [OverlaySearchBarSuggestionSection]
    let onSuggestionTap: (OverlaySearchBarSuggestion) -> Void

    init(
        sections: [OverlaySearchBarSuggestionSection],
        onSuggestionTap: @escaping (OverlaySearchBarSuggestion) -> Void = { _ in }
    ) {
        self.sections = sections
        self.onSuggestionTap = onSuggestionTap
    }

    // MARK: - UI Composition

    var body: some View {
        VStack(spacing: 20) {
            ForEach(sections) { section in
                VStack(spacing: 20) {
                    OverlaySearchBarSectionHeaderMolecule(
                        title: section.title,
                        icon: section.icon
                    )

                    ForEach(section.suggestions) { suggestion in
                        OverlaySearchBarSuggestionItemMolecule(
                            suggestion: suggestion,
                            onTap: { onSuggestionTap(suggestion) }
                        )
                    }
                }
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    OverlaySearchBarSuggestionsListMolecule(sections: OverlaySearchBarFixtures.sections)
        .padding()
}
