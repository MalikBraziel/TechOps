//
//  GroupEventCardCompound.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:59:30 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:39:11 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Compound that binds the group event card view to its ViewModel
//  - Handles lifecycle tasks and user interaction events
//
//  DATA FLOW:
//  1a) Compound ─────async event────▶ ViewModel.send(event)
//  1b) ViewModel ─────state──────▶ GroupEventCardView
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ GroupEventCardCompound       │────▶│ GroupEventCardViewModel       │
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

// MARK: - Group Event Card Compound

/// Compound binding the group event card view to its stateful ViewModel.
struct GroupEventCardCompound: View {
    @State private var viewModel: GroupEventCardViewModel

    init(viewModel: GroupEventCardViewModel) {
        _viewModel = State(wrappedValue: viewModel)
    }

    // MARK: - Data Flow

    var body: some View {
        GroupEventCardView(
            event: viewModel.state.event,
            isSelected: viewModel.state.isSelected,
            onAnnotationTapped: { viewModel.send(.annotationTapped) },
            onOverflowTapped: {}
        )
        .task {
            viewModel.send(.taskStarted)
        }
    }
}

#Preview {
    GroupEventCardCompound(
        viewModel: GroupEventCardViewModel(
            state: GroupEventCardState(event: GroupEventCardFixtures.sampleEvent),
            service: GroupEventCardService()
        )
    )
    .padding(.horizontal, 16)
}
