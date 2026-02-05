//
//  GroupEventCardCommand.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:40:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:33:55 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Commands emitted by the GroupEventCard reducer
//
//  DATA FLOW:
//  1a) Reducer ─────command────▶ ViewModel.handle(command)
//  1b) ViewModel ───service────▶ Service.fetchEvent()
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ GroupEventCardReducer        │────▶│ GroupEventCardCommand         │
//  │ (pure reducer)               │     │ (value type)                 │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - StateMachine.md
//
// =============================================================================
//

import Foundation

// MARK: - Command

/// Commands executed by the GroupEventCard view model.
enum GroupEventCardCommand: Sendable {
    case loadEvent
}
