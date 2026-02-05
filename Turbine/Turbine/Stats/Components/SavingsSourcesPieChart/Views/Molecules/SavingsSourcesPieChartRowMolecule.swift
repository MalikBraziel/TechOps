//
//  SavingsSourcesPieChartRowMolecule.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:59:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:47:16 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Molecule for rendering a single savings source row
//  - Displays colored dot, text details, and formatted amount
//
//  DATA FLOW:
//  1a) Parent View ─────props────▶ SavingsSourcesPieChartRowMolecule
//  1b) Molecule ─────compose────▶ Dot + labels + amount
//
//  OBJECTS:
//  ┌────────────────────────────────────┐     ┌────────────────────────────────────┐
//  │ Parent View                        │────▶│ SavingsSourcesPieChartRowMolecule  │
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

// MARK: - Row Molecule

/// Row molecule describing a single savings source entry.
struct SavingsSourcesPieChartRowMolecule: View {
    let entry: SavingsSourcesPieChartEntry

    var body: some View {
        HStack(alignment: .firstTextBaseline, spacing: 8) {
            SavingsSourcesPieChartColorDotAtom(color: entry.color)

            VStack(alignment: .leading, spacing: 4) {
                Text(entry.title)
                    .font(.system(.subheadline, weight: .medium))
                    .foregroundStyle(.primary)
                Text(entry.description)
                    .font(.system(.footnote, weight: .regular))
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.leading)
            }

            Spacer()

            Text(entry.amount, format: .currency(code: "USD"))
                .font(.system(.footnote, weight: .medium))
                .foregroundStyle(.primary)
        }
    }
}
