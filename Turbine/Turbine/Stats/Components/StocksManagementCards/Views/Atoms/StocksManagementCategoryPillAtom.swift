//
//  StocksManagementCategoryPillAtom.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:06:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:55:51 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Atom for rendering category labels in news cards
//
//  DATA FLOW:
//  1a) Parent View ─────category──▶ StocksManagementCategoryPillAtom
//  1b) Atom ─────render────────▶ Text pill
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ Parent View                  │────▶│ StocksManagementCategoryPill  │
//  │ (molecule)                   │     │ (atom)                        │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - DesignSystem.md
//  - Architecture.md
//
// =============================================================================
//

import SwiftUI

// MARK: - Category Pill Atom

/// Displays a category label with a subtle background.
struct StocksManagementCategoryPillAtom: View {
    let text: String

    // MARK: - UI Composition

    var body: some View {
        Text(text)
            .font(.system(.caption, weight: .regular))
            .foregroundStyle(.secondary)
            .padding(.horizontal, 8)
            .padding(.vertical, 4)
            .background(Color(uiColor: .systemGray5))
            .clipShape(RoundedRectangle(cornerRadius: 6, style: .continuous))
    }
}
