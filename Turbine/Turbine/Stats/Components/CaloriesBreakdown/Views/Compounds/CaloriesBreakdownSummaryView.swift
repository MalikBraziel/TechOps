//
//  CaloriesBreakdownSummaryView.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:06:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactor Agent
//
//  Last_Updated: February 01, 2026 @ 11:18:17 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactor Agent
//
//  PURPOSE:
//  - Pure view rendering the calories breakdown summary
//  - Composes the two chart molecules with padding
//
//  DATA FLOW:
//  1a) Compound ─────summary────▶ CaloriesBreakdownSummaryView
//  1b) Summary View ─────compose────▶ Chart Molecules
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ CaloriesBreakdownSummaryComp │────▶│ CaloriesBreakdownSummaryView  │
//  │ (compound)                   │     │ (view)                        │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - DesignSystem.md
//  - Architecture.md
//
// =============================================================================
//

import SwiftUI

// MARK: - Summary View

struct CaloriesBreakdownSummaryView: View {
    let summary: CaloriesBreakdownSummary

    var body: some View {
        VStack(spacing: 24) {
            CaloriesBreakdownBarChartMolecule(summary: summary)
            CaloriesBreakdownByTypeBarChartMolecule(summary: summary)
        }
        .padding()
    }
}

#Preview {
    CaloriesBreakdownSummaryView(summary: CaloriesBreakdownFixtures.summary)
}
