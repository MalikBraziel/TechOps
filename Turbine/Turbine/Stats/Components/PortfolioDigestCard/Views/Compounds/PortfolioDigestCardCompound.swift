//
//  PortfolioDigestCardCompound.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:29:30 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:55:28 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Compound that binds the portfolio digest card view to its ViewModel
//  - Handles lifecycle tasks and user interaction events
//
//  DATA FLOW:
//  1a) Compound ─────async event────▶ ViewModel.send(event)
//  1b) ViewModel ─────state──────▶ PortfolioDigestCardView
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ PortfolioDigestCardCompound  │────▶│ PortfolioDigestCardViewModel  │
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

// MARK: - Portfolio Digest Card Compound

/// Compound binding the portfolio digest card view to its stateful ViewModel.
struct PortfolioDigestCardCompound: View {
    @State private var viewModel: PortfolioDigestCardViewModel

    init(viewModel: PortfolioDigestCardViewModel) {
        _viewModel = State(wrappedValue: viewModel)
    }

    // MARK: - Data Flow

    var body: some View {
        PortfolioDigestCardView(
            summary: viewModel.state.summary,
            onActionTapped: {}
        )
        .task {
            viewModel.send(.taskStarted)
        }
    }
}

#Preview {
    PortfolioDigestCardCompound(
        viewModel: PortfolioDigestCardViewModel(
            state: PortfolioDigestCardState(summary: PortfolioDigestCardFixtures.summary),
            service: PortfolioDigestCardService()
        )
    )
    .padding()
}
