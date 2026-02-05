//
//  StocksManagementNewsCardMolecule.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:10:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:55:28 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Molecule for rendering a related news card
//  - Displays category and headline with an arrow indicator
//
//  DATA FLOW:
//  1a) Parent View ─────item────▶ StocksManagementNewsCardMolecule
//  1b) Molecule ─────render────▶ News layout
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ Parent View                  │────▶│ StocksManagementNewsCard      │
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

// MARK: - News Card Molecule

/// News card displaying a category pill and headline.
struct StocksManagementNewsCardMolecule: View {
    let item: StocksNewsItem

    // MARK: - UI Composition

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                StocksManagementCategoryPillAtom(text: item.category)
                Spacer()
                Image(systemName: "arrow.up.forward")
                    .font(.system(.subheadline, weight: .regular))
                    .foregroundStyle(.secondary)
            }

            Text(item.title)
                .font(.system(.headline, weight: .regular))
                .lineLimit(2)
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 12)
        .frame(width: 220, alignment: .leading)
        .background(Color(uiColor: .systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
    }
}
