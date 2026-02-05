//
//  CaloriesBreakdownSummaryCompound.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:06:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactor Agent
//
//  Last_Updated: February 01, 2026 @ 11:18:17 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactor Agent
//
//  PURPOSE:
//  - Compound that binds the summary view to its ViewModel
//  - Handles lifecycle task to load data
//
//  DATA FLOW:
//  1a) Compound ─────async event────▶ ViewModel.send(event)
//  1b) ViewModel ─────state────────▶ Summary View
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ CaloriesBreakdownSummaryComp │────▶│ CaloriesBreakdownSummaryVM     │
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

// MARK: - Summary Compound

struct CaloriesBreakdownSummaryCompound: View {
    @State private var viewModel: CaloriesBreakdownSummaryViewModel

    init(viewModel: CaloriesBreakdownSummaryViewModel) {
        _viewModel = State(wrappedValue: viewModel)
    }

    var body: some View {
        CaloriesBreakdownSummaryView(summary: viewModel.state.summary)
            .task {
                viewModel.send(.taskStarted)
            }
    }
}

#Preview {
    CaloriesBreakdownSummaryCompound(
        viewModel: CaloriesBreakdownSummaryViewModel(
            state: CaloriesBreakdownState(summary: CaloriesBreakdownFixtures.summary),
            service: CaloriesBreakdownService()
        )
    )
    .padding()
}
