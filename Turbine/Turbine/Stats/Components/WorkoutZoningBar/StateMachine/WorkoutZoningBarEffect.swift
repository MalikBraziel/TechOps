//
//  WorkoutZoningBarEffect.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:56:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:47:16 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Effect boundary for WorkoutZoningBar
//
//  DATA FLOW:
//  1a) Reducer ─────command────▶ ViewModel.handle(command)
//  1b) ViewModel ─────effect────▶ Service.fetchEntries()
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ WorkoutZoningBarCommand      │────▶│ WorkoutZoningBarEffect        │
//  │ (value type)                 │     │ (effect boundary)            │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - StateMachine.md
//
// =============================================================================
//

import Foundation

// MARK: - Effect

/// Effect types triggered by workout zoning bar commands.
enum WorkoutZoningBarEffect: Sendable {
    case loadEntries
}
