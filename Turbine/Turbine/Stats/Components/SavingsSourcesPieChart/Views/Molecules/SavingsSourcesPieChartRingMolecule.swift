//
//  SavingsSourcesPieChartRingMolecule.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:59:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:47:16 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Molecule rendering the savings sources pie chart ring
//  - Composes chart sectors with inner ring overlay and center icon
//
//  DATA FLOW:
//  1a) Parent View ─────entries────▶ SavingsSourcesPieChartRingMolecule
//  1b) Molecule ─────compose────▶ Chart + overlay + icon
//
//  OBJECTS:
//  ┌────────────────────────────────────┐     ┌────────────────────────────────────┐
//  │ Parent View                        │────▶│ SavingsSourcesPieChartRingMolecule │
//  │ (compound)                         │     │ (molecule)                          │
//  └────────────────────────────────────┘     └────────────────────────────────────┘
//
//  REFERENCES:
//  - DesignSystem.md
//  - Architecture.md
//
// =============================================================================
//

import Charts
import SwiftUI
import UIKit

// MARK: - Ring Molecule

/// Pie chart ring with a center icon and subtle inner/outer stroke.
struct SavingsSourcesPieChartRingMolecule: View {
    let entries: [SavingsSourcesPieChartEntry]
    var chartSize: CGSize = CGSize(width: 150, height: 150)

    var body: some View {
        ZStack {
            Chart(entries) { entry in
                SectorMark(
                    angle: .value("Amount", entry.amount),
                    innerRadius: .ratio(0.75),
                    angularInset: 1.5
                )
                .cornerRadius(4)
                .foregroundStyle(entry.color)
            }
            .chartLegend(.hidden)
            .overlay { ringOverlay }
            .frame(width: chartSize.width, height: chartSize.height)

            Image(systemName: "dollarsign.bank.building.fill")
                .font(.system(.title, weight: .bold))
                .foregroundStyle(.orange)
        }
    }

    // MARK: - UI Composition

    private var ringOverlay: some View {
        let minDimension = min(chartSize.width, chartSize.height)
        let outerStrokeOffset = minDimension * 0.03
        let innerStrokeOffset = minDimension * 0.15

        return ZStack {
            Circle()
                .stroke(Color(uiColor: .separator).opacity(0.5), lineWidth: 1.5)
                .padding(-outerStrokeOffset)

            Circle()
                .stroke(Color(uiColor: .separator).opacity(0.5), lineWidth: 1.5)
                .padding(innerStrokeOffset)
        }
    }
}
