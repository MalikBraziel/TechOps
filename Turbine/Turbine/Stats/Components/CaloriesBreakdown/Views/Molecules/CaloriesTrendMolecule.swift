//
//  CaloriesTrendMolecule.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:05:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactor Agent
//
//  Last_Updated: February 01, 2026 @ 11:17:33 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactor Agent
//
//  PURPOSE:
//  - Molecule showing percentage change vs. yesterday
//  - Displays directional arrow and text
//
//  DATA FLOW:
//  1a) Parent View ─────props────▶ CaloriesTrendMolecule
//  1b) Molecule ─────render────▶ Arrow + Percentage + Caption
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ Parent View                  │────▶│ CaloriesTrendMolecule         │
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

// MARK: - Trend Molecule

struct CaloriesTrendMolecule: View {
    let percentageChange: Double

    private var isPositive: Bool {
        percentageChange >= 0
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack(alignment: .center, spacing: 4) {
                Image(systemName: isPositive ? "arrow.up" : "arrow.down")
                    .font(.system(size: 13, weight: .medium))
                    .foregroundStyle(isPositive ? Color.green : Color.red)
                Text("\(abs(Int(percentageChange)))%")
                    .font(.system(size: 20, weight: .medium))
            }
            Text("Than yesterday")
                .font(.system(size: 13, weight: .regular))
                .foregroundStyle(.secondary)
        }
    }
}
