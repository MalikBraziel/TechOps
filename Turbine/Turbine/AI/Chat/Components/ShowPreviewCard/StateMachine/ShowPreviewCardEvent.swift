//
//  ShowPreviewCardEvent.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:45:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 02, 2026 @ 12:45:00 AM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Defines user and lifecycle events for ShowPreviewCard
//
//  DATA FLOW:
//  1a) View/Compound ─────event────▶ ViewModel.send(event)
//  1b) ViewModel ─────event────▶ Reducer.reduce
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ ShowPreviewCardView          │────▶│ ShowPreviewCardEvent          │
//  │ (compound/view)              │     │ (value type)                  │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - StateMachine.md
//  - SwiftUXRefactoring.md
//
// =============================================================================
//

import SwiftUI

// MARK: - Event

/// Events emitted by the show preview card UI.
enum ShowPreviewCardEvent: Sendable {
    case taskStarted
    case dominantColorLoaded(Color)
    case addTapped
    case actionTapped
}
