//
//  GroupEventCardEvent.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:40:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:33:55 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Declares events for the GroupEventCard state machine
//
//  DATA FLOW:
//  1a) View ─────event────▶ ViewModel.send(event)
//  1b) ViewModel ─────event────▶ Reducer.reduce
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ GroupEventCardView           │────▶│ GroupEventCardEvent           │
//  │ (view)                       │     │ (value type)                 │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - StateMachine.md
//
// =============================================================================
//

import Foundation

// MARK: - Event

/// Events that drive state transitions for the group event card.
enum GroupEventCardEvent: Sendable {
    case taskStarted
    case dataLoaded(GroupEventCardEventData)
    case annotationTapped
}
