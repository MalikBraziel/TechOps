//
//  WorkoutZoningBarFixtures.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:55:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:47:16 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Preview fixtures for WorkoutZoningBar components
//  - Provides deterministic sample data for UI parity
//
//  DATA FLOW:
//  1a) Fixtures ─────entries────▶ WorkoutZoningBarState
//  1b) State ─────preview────▶ SwiftUI Previews
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ WorkoutZoningBarFixtures     │────▶│ WorkoutZoningBarEntry         │
//  │ (fixture source)             │     │ (value type)                  │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - Architecture.md
//
// =============================================================================
//

import Foundation

// MARK: - Fixtures

/// Fixture values for previews and development.
enum WorkoutZoningBarFixtures {
    static let entries: [WorkoutZoningBarEntry] = [
        WorkoutZoningBarEntry(workoutName: "Calfs", completedSets: 13, plannedSets: 16),
        WorkoutZoningBarEntry(workoutName: "Front delts", completedSets: 8, plannedSets: 10),
        WorkoutZoningBarEntry(workoutName: "Rear delts", completedSets: 4, plannedSets: 10)
    ]
}
