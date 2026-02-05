//
//  OverlaySearchBarHomeCompound.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:42:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:42:00 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Compound that binds the overlay search bar home view to its ViewModel
//  - Handles lifecycle tasks and user interaction events
//
//  DATA FLOW:
//  1a) Compound ─────async event────▶ ViewModel.send(event)
//  1b) ViewModel ─────state──────▶ OverlaySearchBarHomeView
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ OverlaySearchBarHomeCompound │────▶│ OverlaySearchBarViewModel     │
//  │ (compound)                   │     │ (@Observable)                │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - Architecture.md
//  - StateMachine.md
//
// =============================================================================
//

import SwiftUI

// MARK: - Overlay Search Bar Home Compound

/// Compound binding the overlay search bar home view to its stateful ViewModel.
struct OverlaySearchBarHomeCompound: View {
    @State private var viewModel: OverlaySearchBarViewModel

    init(viewModel: OverlaySearchBarViewModel) {
        _viewModel = State(wrappedValue: viewModel)
    }

    // MARK: - Data Flow

    var body: some View {
        OverlaySearchBarHomeView(
            showSearch: viewModel.state.showSearch,
            searchQuery: viewModel.state.searchQuery,
            suggestionSections: viewModel.state.suggestionSections,
            onSearchBarTap: { viewModel.send(.searchBarTapped) },
            onDismiss: { viewModel.send(.dismissTapped) },
            onSearchQueryChanged: { viewModel.send(.searchQueryChanged($0)) },
            onSuggestionTap: { _ in }
        )
        .task {
            viewModel.send(.taskStarted)
        }
    }
}

#Preview {
    OverlaySearchBarHomeCompound(
        viewModel: OverlaySearchBarViewModel(
            state: OverlaySearchBarState(
                showSearch: false,
                searchQuery: "",
                suggestionSections: OverlaySearchBarFixtures.sections
            ),
            service: OverlaySearchBarService()
        )
    )
}
