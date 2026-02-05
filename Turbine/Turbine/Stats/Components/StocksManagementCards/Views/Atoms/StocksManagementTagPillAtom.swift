//
//  StocksManagementTagPillAtom.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:06:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:55:28 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Atom for rendering the ticker symbol pill in holdings rows
//
//  DATA FLOW:
//  1a) Parent View ─────symbol────▶ StocksManagementTagPillAtom
//  1b) Atom ─────render────────▶ Text pill
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ Parent View                  │────▶│ StocksManagementTagPillAtom   │
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

// MARK: - Tag Pill Atom

/// Displays the ticker symbol with a pill background.
struct StocksManagementTagPillAtom: View {
    let text: String

    // MARK: - UI Composition

    var body: some View {
        Text(text)
            .font(.system(.footnote, weight: .medium))
            .foregroundStyle(.blue)
            .padding(.horizontal, 8)
            .padding(.vertical, 4)
            .background(Color.blue.opacity(0.12))
            .clipShape(RoundedRectangle(cornerRadius: 6, style: .continuous))
    }
}
