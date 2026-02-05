//
//  FinancialInsightsCardCompound.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:32:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:46:59 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Compound that binds the Financial Insights Card view to its ViewModel
//  - Handles lifecycle task to load card data
//
//  DATA FLOW:
//  1a) Compound ─────async event────▶ ViewModel.send(event)
//  1b) ViewModel ─────state────────▶ FinancialInsightsCardView
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────────┐
//  │ FinancialInsightsCardCompound│────▶│ FinancialInsightsCardViewModel    │
//  │ (compound)                   │     │ (@Observable)                     │
//  └──────────────────────────────┘     └──────────────────────────────────┘
//
//  REFERENCES:
//  - Architecture.md
//  - StateMachine.md
//
// =============================================================================
//

import SwiftUI

// MARK: - Financial Insights Card Compound

/// Compound binding the financial insights card state to its view.
struct FinancialInsightsCardCompound: View {
    @State private var viewModel: FinancialInsightsCardViewModel

    init(viewModel: FinancialInsightsCardViewModel) {
        _viewModel = State(wrappedValue: viewModel)
    }

    // MARK: - UI Composition

    var body: some View {
        FinancialInsightsCardView(card: viewModel.state.card)
            .task {
                viewModel.send(.taskStarted)
            }
    }
}

#Preview {
    FinancialInsightsCardCompound(
        viewModel: FinancialInsightsCardViewModel(
            state: FinancialInsightsCardState(card: FinancialInsightsCardFixtures.sampleCard),
            service: FinancialInsightsCardService()
        )
    )
    .padding()
}
