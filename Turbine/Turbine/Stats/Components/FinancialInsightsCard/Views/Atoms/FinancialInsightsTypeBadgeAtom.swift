//
//  FinancialInsightsTypeBadgeAtom.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:32:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:46:58 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Atom for rendering the insight type badge
//  - Displays a labeled pill with accent color
//
//  DATA FLOW:
//  1a) Parent View ─────props────▶ FinancialInsightsTypeBadgeAtom
//  1b) Atom ─────render───────▶ Text + background
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────────┐
//  │ Parent View                  │────▶│ FinancialInsightsTypeBadgeAtom   │
//  │ (molecule/compound)          │     │ (atom)                            │
//  └──────────────────────────────┘     └──────────────────────────────────┘
//
//  REFERENCES:
//  - DesignSystem.md
//  - Architecture.md
//
// =============================================================================
//

import SwiftUI

// MARK: - Type Badge Atom

/// Badge displaying the current insight type.
struct FinancialInsightsTypeBadgeAtom: View {
    let title: String
    let color: Color

    // MARK: - UI Composition

    var body: some View {
        Text(title)
            .font(.system(.footnote, weight: .medium))
            .foregroundStyle(color)
            .padding(.horizontal, 6)
            .padding(.vertical, 4)
            .background(color.opacity(0.2))
            .cornerRadius(8)
    }
}

#Preview {
    FinancialInsightsTypeBadgeAtom(title: "Needs work", color: .yellow)
        .padding()
}
