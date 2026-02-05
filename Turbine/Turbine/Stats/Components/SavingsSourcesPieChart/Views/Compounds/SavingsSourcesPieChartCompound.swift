//
//  SavingsSourcesPieChartCompound.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:02:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:47:16 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Compound that binds the savings sources pie chart to its ViewModel
//  - Handles lifecycle task to load data
//
//  DATA FLOW:
//  1a) Compound ─────async event────▶ ViewModel.send(event)
//  1b) ViewModel ─────state────────▶ Pie Chart View
//
//  OBJECTS:
//  ┌────────────────────────────────────┐     ┌────────────────────────────────────┐
//  │ SavingsSourcesPieChartCompound     │────▶│ SavingsSourcesPieChartViewModel     │
//  │ (compound)                          │     │ (@Observable)                      │
//  └────────────────────────────────────┘     └────────────────────────────────────┘
//
//  REFERENCES:
//  - Architecture.md
//  - StateMachine.md
//
// =============================================================================
//

import SwiftUI

// MARK: - Pie Chart Compound

/// Compound that binds the pie chart view to the SavingsSourcesPieChartViewModel.
struct SavingsSourcesPieChartCompound: View {
    @State private var viewModel: SavingsSourcesPieChartViewModel

    init(viewModel: SavingsSourcesPieChartViewModel) {
        _viewModel = State(wrappedValue: viewModel)
    }

    // MARK: - Data Flow

    var body: some View {
        SavingsSourcesPieChartView(summary: viewModel.state.summary)
            .task {
                viewModel.send(.taskStarted)
            }
    }
}

#Preview {
    SavingsSourcesPieChartCompound(
        viewModel: SavingsSourcesPieChartViewModel(
            state: SavingsSourcesPieChartState(summary: SavingsSourcesPieChartFixtures.summary),
            service: SavingsSourcesPieChartService()
        )
    )
    .padding()
}
