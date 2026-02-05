//
//  WorkoutZoningBarSegmentAtom.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:02:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:55:28 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Atom rendering a single zoning bar segment
//  - Applies zone color, completion state, and sizing
//
//  DATA FLOW:
//  1a) Parent View ─────props────▶ WorkoutZoningBarSegmentAtom
//  1b) Atom ─────render────▶ Rounded Rectangle Segment
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ WorkoutZoningBarRowMolecule  │────▶│ WorkoutZoningBarSegmentAtom   │
//  │ (molecule)                   │     │ (atom)                        │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - DesignSystem.md
//  - Architecture.md
//
// =============================================================================
//

import SwiftUI

// MARK: - Workout Zoning Bar Segment Atom

/// Renders a single zoning bar segment with zone-specific styling.
struct WorkoutZoningBarSegmentAtom: View {
    let zone: WorkoutZoningBarZone
    let isCompleted: Bool
    let configuration: WorkoutZoningBarConfiguration

    private var fillColor: Color {
        isCompleted ? zone.color : zone.color.opacity(0.2)
    }

    var body: some View {
        RoundedRectangle(cornerRadius: configuration.barCornerRadius)
            .fill(fillColor)
            .frame(maxWidth: .infinity)
            .frame(height: configuration.barHeight)
    }
}
