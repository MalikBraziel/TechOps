//
//  SavingsSourcesPieChartView.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:02:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:47:16 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Pure view rendering the savings sources pie chart content
//  - Composes the ring chart, legend, and source list
//
//  DATA FLOW:
//  1a) Compound ─────summary────▶ SavingsSourcesPieChartView
//  1b) View ─────compose────▶ Ring + Legend + Rows
//
//  OBJECTS:
//  ┌────────────────────────────────────┐     ┌────────────────────────────────────┐
//  │ SavingsSourcesPieChartCompound     │────▶│ SavingsSourcesPieChartView          │
//  │ (compound)                          │     │ (view)                              │
//  └────────────────────────────────────┘     └────────────────────────────────────┘
//
//  REFERENCES:
//  - DesignSystem.md
//  - Architecture.md
//
// =============================================================================
//

import SwiftUI
import UIKit

// MARK: - Pie Chart View

/// Pure view for the savings sources pie chart component.
struct SavingsSourcesPieChartView: View {
    let summary: SavingsSourcesPieChartSummary

    // MARK: - UI Composition

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack(alignment: .center, spacing: 20) {
                SavingsSourcesPieChartRingMolecule(entries: summary.entries)

                SavingsSourcesPieChartLegendMolecule(
                    title: "Total Savings",
                    value: summary.total,
                    annotation: summary.periodDescription
                )
            }
            .padding([.horizontal, .top], 20)

            Divider()
                .background(Color(uiColor: .separator).opacity(0.3))

            VStack(spacing: 16) {
                ForEach(summary.entries) { entry in
                    SavingsSourcesPieChartRowMolecule(entry: entry)
                }
            }
            .padding([.horizontal, .bottom], 20)
        }
        .background(Color(uiColor: .secondarySystemBackground).opacity(0.6))
        .cornerRadius(20)
    }
}

#Preview {
    SavingsSourcesPieChartView(summary: SavingsSourcesPieChartFixtures.summary)
        .padding(.horizontal)
}
