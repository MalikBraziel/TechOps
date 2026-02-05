//
//  CaloriesTypeMetricMolecule.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:05:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactor Agent
//
//  Last_Updated: February 01, 2026 @ 11:17:33 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactor Agent
//
//  PURPOSE:
//  - Molecule for activity-type metric details
//  - Shows color dot, label, percentage, and value
//
//  DATA FLOW:
//  1a) Parent View ─────props────▶ CaloriesTypeMetricMolecule
//  1b) Molecule ─────compose────▶ Color Dot + Label + MetricValueAtom
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ Parent View                  │────▶│ CaloriesTypeMetricMolecule    │
//  │ (compound)                   │     │ (molecule)                    │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - DesignSystem.md
//  - Architecture.md
//
// =============================================================================
//

import SwiftUI

// MARK: - Type Metric Molecule

struct CaloriesTypeMetricMolecule: View {
    let value: Int
    let metric: String
    let type: ActivityType
    let percentage: Int

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack(alignment: .center, spacing: 4) {
                Circle()
                    .fill(type.color)
                    .frame(width: 8, height: 8)
                Text("\(type.title) · \(percentage)%")
                    .font(.system(size: 13, weight: .regular))
                    .foregroundStyle(.secondary)
            }
            MetricValueAtom(value: "\(value)", unit: metric)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}
