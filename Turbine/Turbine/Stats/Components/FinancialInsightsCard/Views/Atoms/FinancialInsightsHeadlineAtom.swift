//
//  FinancialInsightsHeadlineAtom.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:32:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:46:58 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Atom for rendering the Financial Insights Card headline row
//  - Displays the icon and headline text
//
//  DATA FLOW:
//  1a) Parent View ─────props────▶ FinancialInsightsHeadlineAtom
//  1b) Atom ─────render───────▶ HStack(icon, text)
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────────┐
//  │ Parent View                  │────▶│ FinancialInsightsHeadlineAtom    │
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

// MARK: - Headline Atom

/// Icon + headline row for the financial insights card.
struct FinancialInsightsHeadlineAtom: View {
    let iconName: String
    let headline: String

    // MARK: - UI Composition

    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            Image(systemName: iconName)
                .font(.system(.subheadline))
                .foregroundStyle(.secondary)
                .frame(height: 13)
            Text(headline)
                .font(.system(.subheadline, weight: .medium))
                .foregroundStyle(.primary)
        }
    }
}

#Preview {
    FinancialInsightsHeadlineAtom(
        iconName: "waveform.path.ecg",
        headline: "Financial wellness"
    )
    .padding()
}
