//
//  GroupEventCardInfoAtom.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:48:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:33:57 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Atom for rendering icon + text metadata rows
//  - Used for date/time in the header details
//
//  DATA FLOW:
//  1a) Parent View ─────props────▶ GroupEventCardInfoAtom
//  1b) Atom ─────render───────▶ HStack(icon, text)
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ Parent View                  │────▶│ GroupEventCardInfoAtom        │
//  │ (molecule/compound)          │     │ (atom)                        │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - DesignSystem.md
//  - Architecture.md
//
// =============================================================================
//

import SwiftUI

// MARK: - Info Atom

/// Icon + caption metadata row used in group event details.
struct GroupEventCardInfoAtom: View {
    let icon: Image
    let text: String

    var body: some View {
        HStack(spacing: 4) {
            icon
                .font(.system(.footnote))
                .foregroundStyle(.secondary)
            Text(text)
                .font(.system(.footnote))
                .foregroundStyle(.secondary)
        }
    }
}
