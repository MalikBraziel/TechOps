//
//  ShowPreviewCardCommand.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:45:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 02, 2026 @ 12:45:00 AM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Defines synchronous commands for ShowPreviewCard reducer output
//
//  DATA FLOW:
//  1a) Reducer ─────command────▶ ViewModel.handle(command)
//
//  OBJECTS:
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

// MARK: - Command

/// Commands emitted by the show preview card reducer.
enum ShowPreviewCardCommand: Sendable {
    case loadDominantColor
}
