//
//  WorkoutZoningBarRowMolecule.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:59:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:55:28 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Molecule rendering a single workout zoning row
//  - Displays header metadata and segmented progress bars
//
//  DATA FLOW:
//  1a) Parent View ─────entry────▶ WorkoutZoningBarRowMolecule
//  1b) Molecule ─────compose────▶ Header + Segmented Bars
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ WorkoutZoningBarView         │────▶│ WorkoutZoningBarRowMolecule   │
//  │ (compound view)              │     │ (molecule)                    │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - DesignSystem.md
//  - Architecture.md
//
// =============================================================================
//

import SwiftUI

// MARK: - Row Molecule

/// Renders the workout header metadata with the zoning bar segments.
struct WorkoutZoningBarRowMolecule: View {
    let entry: WorkoutZoningBarEntry
    let configuration: WorkoutZoningBarConfiguration

    // MARK: - Derived State

    private var zone: WorkoutZoningBarZone {
        WorkoutZoningBarZone.zone(
            for: entry.completedSets,
            configuration: configuration
        )
    }

    private var completedBars: Int {
        min(entry.completedSets, configuration.totalBars)
    }

    // MARK: - UI Composition

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            header
            barStack
        }
    }

    // MARK: - Header

    private var header: some View {
        HStack(alignment: .lastTextBaseline) {
            VStack(alignment: .leading, spacing: 4) {
                Text(entry.workoutName)
                    .font(.system(.footnote, weight: .medium))
                    .foregroundStyle(.secondary)
                    .textCase(.uppercase)

                Text("\(Text("\(entry.completedSets)").foregroundStyle(.primary)) of \(entry.plannedSets) weekly sets")
                    .font(.system(.headline, weight: .medium))
                    .foregroundStyle(.secondary)
            }

            Spacer()

            Text(zone.title)
                .font(.system(.headline, weight: .medium))
                .foregroundStyle(zone.color)
        }
    }

    // MARK: - Bars

    private var barStack: some View {
        HStack(spacing: configuration.barSpacing) {
            ForEach(0..<configuration.totalBars, id: \.self) { index in
                let barZone = WorkoutZoningBarZone.zone(
                    forBarIndex: index,
                    configuration: configuration
                )
                let isCompleted = index < completedBars
                WorkoutZoningBarSegmentAtom(
                    zone: barZone,
                    isCompleted: isCompleted,
                    configuration: configuration
                )
            }
        }
    }
}
