//
//  ShowPreviewCardCompound.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:45:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 02, 2026 @ 01:11:58 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Compound that binds the show preview card view to its ViewModel
//  - Handles lifecycle tasks and user interaction events
//
//  DATA FLOW:
//  1a) Compound ─────async event────▶ ViewModel.send(event)
//  1b) ViewModel ─────state──────▶ ShowPreviewCardView
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ ShowPreviewCardCompound      │────▶│ ShowPreviewCardViewModel      │
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

// MARK: - Show Preview Card Compound

/// Compound binding the show preview card view to its stateful ViewModel.
struct ShowPreviewCardCompound: View {
    @State private var viewModel: ShowPreviewCardViewModel
    let onAddTapped: () -> Void
    let onActionTapped: () -> Void

    init(
        viewModel: ShowPreviewCardViewModel,
        onAddTapped: @escaping () -> Void = {},
        onActionTapped: @escaping () -> Void = {}
    ) {
        _viewModel = State(wrappedValue: viewModel)
        self.onAddTapped = onAddTapped
        self.onActionTapped = onActionTapped
    }

    // MARK: - Data Flow

    var body: some View {
        ShowPreviewCardView(
            data: viewModel.state.data,
            dominantColor: viewModel.state.dominantColor,
            isAdded: viewModel.state.isAdded,
            onAddTapped: {
                viewModel.send(.addTapped)
                onAddTapped()
            },
            onActionTapped: {
                viewModel.send(.actionTapped)
                onActionTapped()
            }
        )
        .task {
            viewModel.send(.taskStarted)
        }
    }
}

#Preview {
    ScrollView(.horizontal, showsIndicators: false) {
        HStack(spacing: 10) {
            ForEach(ShowPreviewCardFixtures.sampleCards) { card in
                ShowPreviewCardCompound(
                    viewModel: ShowPreviewCardViewModel(
                        state: ShowPreviewCardState(data: card),
                        colorService: ShowPreviewCardColorService()
                    ),
                    onAddTapped: { print("Added") },
                    onActionTapped: { print("Action") }
                )
            }
        }
        .padding(.horizontal, 16)
        .scrollTargetLayout()
    }
    .scrollTargetBehavior(.viewAligned)
    .background(Color(uiColor: .systemGray6))
}
