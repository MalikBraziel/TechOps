//
//  ImagesCollectionPreviewCompound.swift
//  Turbine
//
//  Created: February 02, 2026 @ 01:10:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 02, 2026 @ 01:10:00 AM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Compound that binds the preview card view to its ViewModel
//  - Handles lifecycle tasks and data loading events
//
//  DATA FLOW:
//  1a) Compound ─────async event────▶ ViewModel.send(event)
//  1b) ViewModel ─────state──────▶ ImagesCollectionPreviewView
//
//  OBJECTS:
//  ┌────────────────────────────────────┐     ┌────────────────────────────────────┐
//  │ ImagesCollectionPreviewCompound    │────▶│ ImagesCollectionPreviewViewModel   │
//  │ (compound)                         │     │ (@Observable)                        │
//  └────────────────────────────────────┘     └────────────────────────────────────┘
//
//  REFERENCES:
//  - Architecture.md
//  - StateMachine.md
//
// =============================================================================
//

import SwiftUI

// MARK: - Images Collection Preview Compound

/// Compound binding the images collection preview view to its stateful ViewModel.
struct ImagesCollectionPreviewCompound: View {
    @State private var viewModel: ImagesCollectionPreviewViewModel

    init(viewModel: ImagesCollectionPreviewViewModel) {
        _viewModel = State(wrappedValue: viewModel)
    }

    // MARK: - Data Flow

    var body: some View {
        ImagesCollectionPreviewView(
            data: viewModel.state.data,
            isLoading: viewModel.state.isLoading
        )
        .task {
            viewModel.send(.taskStarted)
        }
    }
}

#Preview {
    ImagesCollectionPreviewCompound(
        viewModel: ImagesCollectionPreviewViewModel(
            state: ImagesCollectionPreviewState(data: ImagesCollectionPreviewFixtures.sampleData),
            service: ImagesCollectionPreviewService()
        )
    )
    .padding(.horizontal, 24)
    .padding(.vertical, 16)
    .background(Color.black)
}
