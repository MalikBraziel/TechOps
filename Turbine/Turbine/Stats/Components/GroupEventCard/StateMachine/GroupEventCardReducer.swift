//
//  GroupEventCardReducer.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:40:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:33:55 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Pure reducer for GroupEventCard state transitions
//  - Returns next state and commands based on events
//
//  DATA FLOW:
//  1a) ViewModel ─────event────▶ Reducer.reduce
//  1b) Reducer ─────state────▶ ViewModel.state
//  1c) Reducer ─────command──▶ ViewModel.handle(command)
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ GroupEventCardReducer        │────▶│ GroupEventCardState           │
//  │ (pure reducer)               │     │ (value type)                 │
//  └──────────────────────────────┘     └──────────────────────────────┘
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ GroupEventCardReducer        │────▶│ GroupEventCardCommand         │
//  │ (pure reducer)               │     │ (value type)                 │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - StateMachine.md
//  - Architecture.md
//
// =============================================================================
//

import Foundation

// MARK: - Reducer

/// Pure reducer for group event card state transitions.
enum GroupEventCardReducer {
    static func reduce(state: inout GroupEventCardState, event: GroupEventCardEvent) -> [GroupEventCardCommand] {
        switch event {
        case .taskStarted:
            state.isLoading = true
            return [.loadEvent]
        case .dataLoaded(let eventData):
            state.event = eventData
            state.isLoading = false
            return []
        case .annotationTapped:
            state.isSelected.toggle()
            return []
        }
    }
}
