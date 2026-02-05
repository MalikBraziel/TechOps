//
//  StocksManagementChangeIndicatorMolecule.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:08:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 02, 2026 @ 12:52:19 AM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Molecule for displaying price change metrics with iconography
//
//  DATA FLOW:
//  1a) Parent View ─────props────▶ StocksManagementChangeIndicatorMolecule
//  1b) Molecule ─────render────▶ Delta + icon + percentage
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ Parent View                  │────▶│ StocksManagementChangeIndicator│
//  │ (molecule)                   │     │ (molecule)                    │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - DesignSystem.md
//  - Architecture.md
//
// =============================================================================
//

import Foundation
import SwiftUI

// MARK: - Change Indicator Molecule

/// Price change indicator showing delta, direction icon, and percentage.
struct StocksManagementChangeIndicatorMolecule: View {
    let difference: Double
    let percentage: Double

    private var isPositive: Bool {
        difference >= 0
    }

    private var changeColor: Color {
        isPositive ? .green : .red
    }

    private var differenceText: String {
        let sign = isPositive ? "+" : ""
        let formatted = difference.formatted(.number.precision(.fractionLength(2)))
        return "(\(sign)\(formatted))"
    }

    // MARK: - UI Composition

    var body: some View {
        HStack(spacing: 4) {
            Text(differenceText)
                .foregroundStyle(changeColor)

            Image(systemName: isPositive ? "chart.line.uptrend.xyaxis" : "chart.line.downtrend.xyaxis")
                .foregroundStyle(changeColor)

            Text("\(abs(percentage), specifier: "%.3f")%")
                .foregroundStyle(changeColor)
        }
        .font(.system(.footnote, weight: .medium))
    }
}
