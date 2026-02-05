//
//  WorkoutZoningBarState.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:55:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:47:16 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Value type representing UI state for WorkoutZoningBar
//  - Encapsulates entries, configuration, and loading state
//
//  DATA FLOW:
//  1a) Reducer ─────state────▶ ViewModel
//  1b) ViewModel ─────bind────▶ Views
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ WorkoutZoningBarReducer      │────▶│ WorkoutZoningBarState         │
//  │ (pure reducer)               │     │ (value type)                  │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - StateMachine.md
//  - Architecture.md
//
// =============================================================================
//

import Foundation

// MARK: - State

/// UI state for rendering the workout zoning bar list.
struct WorkoutZoningBarState: Sendable {
    var entries: [WorkoutZoningBarEntry]
    var configuration: WorkoutZoningBarConfiguration
    var isLoading: Bool

    init(
        entries: [WorkoutZoningBarEntry],
        configuration: WorkoutZoningBarConfiguration = .standard,
        isLoading: Bool = false
    ) {
        self.entries = entries
        self.configuration = configuration
        self.isLoading = isLoading
    }
}
