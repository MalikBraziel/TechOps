//
//  OverlaySearchBarView.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:42:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:42:00 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Pure view rendering the overlay search experience
//  - Composes the search field and suggestion list
//
//  DATA FLOW:
//  1a) Parent View ─────binding────▶ OverlaySearchBarSearchFieldMolecule
//  1b) Parent View ─────props──────▶ OverlaySearchBarSuggestionsListMolecule
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ OverlaySearchBarHomeView     │────▶│ OverlaySearchBarView          │
//  │ (view)                       │     │ (view)                        │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - DesignSystem.md
//  - Architecture.md
//
// =============================================================================
//

import SwiftUI

// MARK: - Overlay Search Bar View

/// Pure view composing the overlay search experience.
struct OverlaySearchBarView: View {
    let namespace: Namespace.ID
    @Binding var searchQuery: String
    let suggestionSections: [OverlaySearchBarSuggestionSection]
    let onDismiss: () -> Void
    let onSuggestionTap: (OverlaySearchBarSuggestion) -> Void

    @FocusState private var searchFocused: Bool

    // MARK: - UI Composition

    var body: some View {
        VStack(spacing: 16) {
            OverlaySearchBarSearchFieldMolecule(
                namespace: namespace,
                query: $searchQuery,
                isFocused: $searchFocused,
                onDismiss: {
                    withAnimation(.snappy) {
                        onDismiss()
                    }
                }
            )

            OverlaySearchBarSuggestionsListMolecule(
                sections: suggestionSections,
                onSuggestionTap: onSuggestionTap
            )
            .transition(.asymmetric(insertion: .identity, removal: .opacity))

            Spacer()
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                searchFocused = true
            }
        }
        .onDisappear {
            DispatchQueue.main.async {
                searchFocused = false
            }
        }
    }
}

#Preview {
    @Namespace var namespace

    OverlaySearchBarView(
        namespace: namespace,
        searchQuery: .constant(""),
        suggestionSections: OverlaySearchBarFixtures.sections,
        onDismiss: {},
        onSuggestionTap: { _ in }
    )
}
