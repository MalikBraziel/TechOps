//
//  StocksManagementIconButtonAtom.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:06:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:55:51 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Atom for rendering icon-only action buttons in card headers
//
//  DATA FLOW:
//  1a) Parent View ─────action────▶ StocksManagementIconButtonAtom
//  1b) Atom ─────render────────▶ Button + SF Symbol
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ Parent View                  │────▶│ StocksManagementIconButtonAtom│
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

// MARK: - Icon Button Atom

/// Button rendering a single SF Symbol icon.
struct StocksManagementIconButtonAtom: View {
    let systemName: String
    var action: () -> Void

    // MARK: - UI Composition

    var body: some View {
        Button(action: action) {
            Image(systemName: systemName)
                .font(.system(.headline, weight: .regular))
                .foregroundStyle(.secondary)
        }
        .buttonStyle(.plain)
    }
}
