//
//  CaloriesMetricMolecule.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:05:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactor Agent
//
//  Last_Updated: February 01, 2026 @ 11:17:33 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactor Agent
//
//  PURPOSE:
//  - Molecule for a labeled calories metric
//  - Composes MetricValueAtom with a caption
//
//  DATA FLOW:
//  1a) Parent View ─────props────▶ CaloriesMetricMolecule
//  1b) Molecule ─────compose────▶ MetricValueAtom + Text
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ Parent View                  │────▶│ CaloriesMetricMolecule        │
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

// MARK: - Metric Molecule

struct CaloriesMetricMolecule: View {
    let value: Int
    let metric: String
    let title: String

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            MetricValueAtom(value: "\(value)", unit: metric)
            Text(title)
                .font(.system(size: 13, weight: .regular))
                .foregroundStyle(.secondary)
        }
    }
}
