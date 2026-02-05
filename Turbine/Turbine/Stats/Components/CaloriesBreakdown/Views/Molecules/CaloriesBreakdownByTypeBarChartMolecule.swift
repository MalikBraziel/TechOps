//
//  CaloriesBreakdownByTypeBarChartMolecule.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:06:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactor Agent
//
//  Last_Updated: February 01, 2026 @ 11:18:17 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactor Agent
//
//  PURPOSE:
//  - Molecule rendering the calories breakdown by activity type
//  - Displays a stacked bar and per-type metrics
//
//  DATA FLOW:
//  1a) Parent View ─────summary────▶ CaloriesBreakdownByTypeBarChartMolecule
//  1b) Molecule ─────compose────▶ Stacked Bar + Type Metrics
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ Parent View                  │────▶│ CaloriesBreakdownByTypeBar    │
//  │ (compound)                   │     │ (molecule)                    │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - DesignSystem.md
//  - Architecture.md
//
// =============================================================================
//

import Charts
import SwiftUI

// MARK: - Breakdown By Type Molecule

struct CaloriesBreakdownByTypeBarChartMolecule: View {
    let summary: CaloriesBreakdownSummary

    private var orderedTypes: [ActivityType] {
        ActivityType.allCases.filter { summary.totalsByType[$0, default: 0] > 0 }
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Chart {
                ForEach(orderedTypes, id: \.self) { type in
                    if let amount = summary.totalsByType[type] {
                        BarMark(
                            x: .value("", amount),
                            stacking: .standard
                        )
                        .foregroundStyle(type.color)
                        .cornerRadius(1)
                    }
                }
            }
            .chartLegend(.hidden)
            .chartXAxis(.hidden)
            .frame(height: 18)

            HStack {
                ForEach(orderedTypes, id: \.self) { type in
                    if let amount = summary.totalsByType[type] {
                        let percentage = summary.totalCalories > 0
                            ? Int((amount / summary.totalCalories) * 100)
                            : 0
                        CaloriesTypeMetricMolecule(
                            value: Int(amount),
                            metric: "kcal",
                            type: type,
                            percentage: percentage
                        )
                    }
                }
            }
        }
    }
}
