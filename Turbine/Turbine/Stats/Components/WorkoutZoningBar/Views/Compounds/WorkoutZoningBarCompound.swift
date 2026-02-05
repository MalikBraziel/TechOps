//
//  WorkoutZoningBarCompound.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:01:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:55:28 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Compound that binds the workout zoning bar view to its ViewModel
//  - Handles lifecycle task to load data
//
//  DATA FLOW:
//  1a) Compound ─────async event────▶ ViewModel.send(event)
//  1b) ViewModel ─────state────────▶ WorkoutZoningBarView
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ WorkoutZoningBarCompound     │────▶│ WorkoutZoningBarViewModel     │
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

// MARK: - Workout Zoning Bar Compound

/// Binds the workout zoning bar view to its observable view model.
struct WorkoutZoningBarCompound: View {
    @State private var viewModel: WorkoutZoningBarViewModel

    init(viewModel: WorkoutZoningBarViewModel) {
        _viewModel = State(wrappedValue: viewModel)
    }

    // MARK: - Data Flow

    var body: some View {
        WorkoutZoningBarView(
            entries: viewModel.state.entries,
            configuration: viewModel.state.configuration
        )
        .task {
            viewModel.send(.taskStarted)
        }
    }
}

#Preview {
    WorkoutZoningBarCompound(
        viewModel: WorkoutZoningBarViewModel(
            state: WorkoutZoningBarState(entries: WorkoutZoningBarFixtures.entries),
            service: WorkoutZoningBarService()
        )
    )
    .padding()
    .background(Color.black)
    .preferredColorScheme(.dark)
}
