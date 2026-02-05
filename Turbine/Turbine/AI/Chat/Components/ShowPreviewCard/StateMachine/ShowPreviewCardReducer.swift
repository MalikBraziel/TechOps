//
//  ShowPreviewCardReducer.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:45:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 02, 2026 @ 12:45:00 AM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Pure reducer for ShowPreviewCard state transitions
//  - Returns next state and commands based on events
//
//  DATA FLOW:
//  1a) ViewModel ─────event────▶ Reducer.reduce
//  1b) Reducer ─────state────▶ ViewModel.state
//  1c) Reducer ─────command──▶ ViewModel.handle(command)
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ ShowPreviewCardReducer       │────▶│ ShowPreviewCardState          │
//  │ (pure reducer)               │     │ (value type)                  │
//  └──────────────────────────────┘     └──────────────────────────────┘
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ ShowPreviewCardReducer       │────▶│ ShowPreviewCardCommand        │
//  │ (pure reducer)               │     │ (value type)                  │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - StateMachine.md
//  - SwiftUXRefactoring.md
//
// =============================================================================
//

import Foundation

// MARK: - Reducer

/// Pure reducer for show preview card state transitions.
enum ShowPreviewCardReducer {
    static func reduce(state: inout ShowPreviewCardState, event: ShowPreviewCardEvent) -> [ShowPreviewCardCommand] {
        switch event {
        case .taskStarted:
            state.isLoading = true
            return [.loadDominantColor]
        case .dominantColorLoaded(let color):
            state.dominantColor = color
            state.isLoading = false
            return []
        case .addTapped:
            state.isAdded.toggle()
            return []
        case .actionTapped:
            return []
        }
    }
}
