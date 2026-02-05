//
//  OverlaySearchBarHomeView.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:42:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:42:00 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Pure view rendering the overlay search bar home layout
//  - Hosts the preview bar, sample content, and overlay presentation
//
//  DATA FLOW:
//  1a) Parent View ─────state────▶ OverlaySearchBarHomeView
//  1b) Home View ─────event────▶ onSearchBarTap / onDismiss
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ OverlaySearchBarHomeCompound │────▶│ OverlaySearchBarHomeView      │
//  │ (compound)                   │     │ (view)                        │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - DesignSystem.md
//  - Architecture.md
//
// =============================================================================
//

import SwiftUI

// MARK: - Overlay Search Bar Home View

/// Pure view hosting the preview bar and overlay search experience.
struct OverlaySearchBarHomeView: View {
    let showSearch: Bool
    let searchQuery: String
    let suggestionSections: [OverlaySearchBarSuggestionSection]
    let onSearchBarTap: () -> Void
    let onDismiss: () -> Void
    let onSearchQueryChanged: (String) -> Void
    let onSuggestionTap: (OverlaySearchBarSuggestion) -> Void

    @Namespace private var namespace

    // MARK: - Data Flow

    private var queryBinding: Binding<String> {
        Binding(
            get: { searchQuery },
            set: { onSearchQueryChanged($0) }
        )
    }

    // MARK: - UI Composition

    var body: some View {
        ScrollView {
            OverlaySearchBarPreviewMolecule(placeholder: "Search in workspace")
                .matchedGeometryEffect(
                    id: "searchBar",
                    in: namespace,
                    properties: .frame,
                    isSource: true
                )
                .frame(height: 50)
                .transition(.asymmetric(insertion: .identity, removal: .offset(y: 1)))
                .padding(.horizontal)
                .opacity(showSearch ? 0 : 1)
                .onTapGesture {
                    withAnimation(.snappy) {
                        onSearchBarTap()
                    }
                }

            sampleGrid()
                .blur(radius: showSearch ? 8 : 0)
        }
        .disabled(showSearch)
        .overlay(alignment: .top) {
            if showSearch {
                OverlaySearchBarView(
                    namespace: namespace,
                    searchQuery: queryBinding,
                    suggestionSections: suggestionSections,
                    onDismiss: onDismiss,
                    onSuggestionTap: onSuggestionTap
                )
            }
        }
    }

    @ViewBuilder
    private func sampleGrid() -> some View {
        Grid {
            GridRow {
                RoundedRectangle(cornerRadius: 16)
                    .fill(.gray.opacity(0.2))
                    .frame(height: 100)
                RoundedRectangle(cornerRadius: 16)
                    .fill(.gray.opacity(0.2))
                    .frame(height: 100)
            }
            GridRow {
                RoundedRectangle(cornerRadius: 16)
                    .fill(.gray.opacity(0.2))
                    .frame(height: 100)
                RoundedRectangle(cornerRadius: 16)
                    .fill(.gray.opacity(0.2))
                    .frame(height: 100)
            }
            GridRow {
                RoundedRectangle(cornerRadius: 16)
                    .fill(.gray.opacity(0.2))
                    .frame(height: 100)
                RoundedRectangle(cornerRadius: 16)
                    .fill(.gray.opacity(0.2))
                    .frame(height: 100)
            }
        }
        .padding()
    }
}

#Preview {
    OverlaySearchBarHomeView(
        showSearch: false,
        searchQuery: "",
        suggestionSections: OverlaySearchBarFixtures.sections,
        onSearchBarTap: {},
        onDismiss: {},
        onSearchQueryChanged: { _ in },
        onSuggestionTap: { _ in }
    )
}
