//
//  StocksManagementSummaryCardMolecule.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:08:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:55:52 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Molecule for the total portfolio summary card
//  - Displays total value, return, and date
//
//  DATA FLOW:
//  1a) Parent View ─────summary────▶ StocksManagementSummaryCardMolecule
//  1b) Molecule ─────render────▶ Summary metrics
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ Parent View                  │────▶│ StocksManagementSummaryCard   │
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

// MARK: - Summary Card Molecule

/// Summary card showing total portfolio value and return.
struct StocksManagementSummaryCardMolecule: View {
    let summary: StocksPortfolioSummary

    private static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM dd, yyyy"
        return formatter
    }()

    private var dateText: String {
        Self.dateFormatter.string(from: summary.date)
    }

    private var returnColor: Color {
        summary.returnTrend.isPositive ? .green : .red
    }

    // MARK: - UI Composition

    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text("Total portfolio")
                .font(.system(.headline, weight: .regular))
                .foregroundStyle(.primary)

            Text("$\(summary.totalValue, specifier: "%.2f")")
                .font(.system(.title, weight: .semibold))
                .foregroundStyle(.primary)

            HStack(spacing: 6) {
                Image(systemName: summary.returnTrend.iconName)
                    .foregroundStyle(returnColor)

                Text("\(summary.returnPercentage, specifier: "%.2f")%")
                    .foregroundStyle(returnColor)

                Text("Return")
                    .foregroundStyle(.secondary)

                Spacer()

                Text(dateText)
                    .foregroundStyle(.secondary)
            }
            .font(.system(.footnote, weight: .medium))
        }
        .padding()
        .background(Color(uiColor: .systemGray6))
        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
    }
}
