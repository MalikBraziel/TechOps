//
//  StocksManagementCardsCompound.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:12:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:55:28 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Compound binding the StocksManagementCards view to its ViewModel
//  - Handles lifecycle task to load data
//
//  DATA FLOW:
//  1a) Compound ─────async event────▶ ViewModel.send(event)
//  1b) ViewModel ─────state────────▶ Cards View
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ StocksManagementCardsComp    │────▶│ StocksManagementCardsVM       │
//  │ (compound)                   │     │ (@Observable)                 │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - Architecture.md
//  - StateMachine.md
//
// =============================================================================
//

import SwiftUI

// MARK: - Stocks Management Cards Compound

/// Compound that binds StocksManagementCardsView to its ViewModel.
struct StocksManagementCardsCompound: View {
    @State private var viewModel: StocksManagementCardsViewModel

    init(viewModel: StocksManagementCardsViewModel) {
        _viewModel = State(wrappedValue: viewModel)
    }

    // MARK: - UI Composition

    var body: some View {
        StocksManagementCardsView(
            snapshot: viewModel.state.snapshot,
            onAddHolding: { viewModel.send(.addHoldingTapped) },
            onHoldingsMenu: { viewModel.send(.holdingsMenuTapped) },
            onNewsSelected: { viewModel.send(.newsTapped($0)) }
        )
        .task {
            viewModel.send(.taskStarted)
        }
    }
}

#Preview {
    StocksManagementCardsCompound(
        viewModel: StocksManagementCardsViewModel(
            state: StocksManagementState(snapshot: StocksManagementFixtures.snapshot),
            service: StocksManagementService()
        )
    )
    .padding()
}
