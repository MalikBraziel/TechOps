//
//  SavingsSourcesPieChartLegendMolecule.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:59:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:47:16 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Molecule for displaying the total savings legend
//  - Shows title, formatted value, and optional annotation
//
//  DATA FLOW:
//  1a) Parent View ─────props────▶ SavingsSourcesPieChartLegendMolecule
//  1b) Molecule ─────compose────▶ Text stack
//
//  OBJECTS:
//  ┌────────────────────────────────────┐     ┌────────────────────────────────────┐
//  │ Parent View                        │────▶│ SavingsSourcesPieChartLegendMolecule│
//  │ (compound)                         │     │ (molecule)                          │
//  └────────────────────────────────────┘     └────────────────────────────────────┘
//
//  REFERENCES:
//  - DesignSystem.md
//  - Architecture.md
//
// =============================================================================
//

import SwiftUI

// MARK: - Legend Molecule

/// Displays the total savings label, value, and annotation text.
struct SavingsSourcesPieChartLegendMolecule: View {
    let title: String
    let value: Double
    let annotation: String?

    var body: some View {
        VStack(alignment: .leading, spacing: 2) {
            Text(title)
                .font(.system(.footnote, weight: .regular))
                .foregroundStyle(.secondary)
            Text(value, format: .currency(code: "USD"))
                .font(.system(.title2, weight: .semibold))
                .foregroundStyle(.primary)
            if let annotation {
                Text(annotation)
                    .font(.system(.footnote, weight: .regular))
                    .foregroundStyle(.secondary)
            }
        }
    }
}
