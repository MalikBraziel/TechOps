//
//  ImagesCollectionPreviewReducer.swift
//  Turbine
//
//  Created: February 02, 2026 @ 01:10:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 02, 2026 @ 01:10:00 AM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Pure reducer for ImagesCollectionPreview state transitions
//  - Returns next state and commands based on events
//
//  DATA FLOW:
//  1a) ViewModel ─────event────▶ Reducer.reduce
//  1b) Reducer ─────state────▶ ViewModel.state
//  1c) Reducer ─────command──▶ ViewModel.handle(command)
//
//  OBJECTS:
//  ┌────────────────────────────────────┐     ┌────────────────────────────────────┐
//  │ ImagesCollectionPreviewReducer     │────▶│ ImagesCollectionPreviewState       │
//  │ (pure reducer)                     │     │ (value type)                        │
//  └────────────────────────────────────┘     └────────────────────────────────────┘
//  ┌────────────────────────────────────┐     ┌────────────────────────────────────┐
//  │ ImagesCollectionPreviewReducer     │────▶│ ImagesCollectionPreviewCommand     │
//  │ (pure reducer)                     │     │ (value type)                        │
//  └────────────────────────────────────┘     └────────────────────────────────────┘
//
//  REFERENCES:
//  - StateMachine.md
//  - Architecture.md
//
// =============================================================================
//

import Foundation

// MARK: - Reducer

/// Pure reducer for images collection preview state transitions.
enum ImagesCollectionPreviewReducer {
    static func reduce(
        state: inout ImagesCollectionPreviewState,
        event: ImagesCollectionPreviewEvent
    ) -> [ImagesCollectionPreviewCommand] {
        switch event {
        case .taskStarted:
            state.isLoading = true
            return [.loadPreviewData]
        case .dataLoaded(let data):
            state.data = data
            state.isLoading = false
            return []
        }
    }
}
