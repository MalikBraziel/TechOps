//
//  PortfolioDigestDeltaMolecule.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:25:30 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 02, 2026 @ 12:22:16 AM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Molecule for displaying the daily balance delta row
//  - Shows directional arrow and delta caption text
//
//  DATA FLOW:
//  1a) Parent View ─────delta────▶ PortfolioDigestDeltaMolecule
//  1b) Molecule ─────render────▶ Arrow + Text
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ Parent View                  │────▶│ PortfolioDigestDeltaMolecule │
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

// MARK: - Delta Molecule

/// Delta row showing daily change vs. yesterday.
struct PortfolioDigestDeltaMolecule: View {
    let dailyDelta: Double

    private var isPositive: Bool {
        dailyDelta >= 0
    }

    private var deltaText: String {
        let amount = abs(dailyDelta).formatted(.currency(code: "USD"))
        let direction = isPositive ? "more than yesterday" : "less than yesterday"
        return "\(amount) \(direction)"
    }

    // MARK: - UI Composition

    var body: some View {
        HStack(spacing: 2) {
            Image(systemName: isPositive ? "arrow.up" : "arrow.down")
            Text(deltaText)
        }
        .font(.system(.footnote, weight: .medium))
        .foregroundStyle(isPositive ? Color.green : Color.red)
    }
}

#Preview {
    PortfolioDigestDeltaMolecule(dailyDelta: 1358.11)
        .padding()
}
