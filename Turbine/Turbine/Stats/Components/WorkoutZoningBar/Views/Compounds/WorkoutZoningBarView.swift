//
//  WorkoutZoningBarView.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:00:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:55:28 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Pure view rendering the workout zoning bar list
//  - Composes row molecules with consistent spacing
//
//  DATA FLOW:
//  1a) Compound ─────state────▶ WorkoutZoningBarView
//  1b) View ─────compose────▶ WorkoutZoningBarRowMolecule
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ WorkoutZoningBarCompound     │────▶│ WorkoutZoningBarView          │
//  │ (compound)                   │     │ (view)                        │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - DesignSystem.md
//  - Architecture.md
//
// =============================================================================
//

import SwiftUI

// MARK: - Workout Zoning Bar View

/// Displays a vertical list of workout zoning rows.
struct WorkoutZoningBarView: View {
    let entries: [WorkoutZoningBarEntry]
    let configuration: WorkoutZoningBarConfiguration

    // MARK: - UI Composition

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            ForEach(entries) { entry in
                WorkoutZoningBarRowMolecule(
                    entry: entry,
                    configuration: configuration
                )
            }
        }
    }
}

#Preview {
    WorkoutZoningBarView(
        entries: WorkoutZoningBarFixtures.entries,
        configuration: .standard
    )
    .padding()
    .background(Color.black)
    .preferredColorScheme(.dark)
}
