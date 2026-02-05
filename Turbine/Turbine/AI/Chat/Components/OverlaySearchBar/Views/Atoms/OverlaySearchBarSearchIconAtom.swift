//
//  OverlaySearchBarSearchIconAtom.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:38:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:38:00 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Atom rendering the search icon for the overlay search bar
//
//  DATA FLOW:
//  1a) Parent View ─────props────▶ OverlaySearchBarSearchIconAtom
//  1b) Atom ─────render───────▶ Image(systemName:)
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ Parent View                  │────▶│ OverlaySearchBarSearchIconAtom│
//  │ (molecule/compound)          │     │ (atom)                        │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - DesignSystem.md
//
// =============================================================================
//

import SwiftUI

// MARK: - Search Icon Atom

/// Search icon used in the overlay search bar.
struct OverlaySearchBarSearchIconAtom: View {
    var body: some View {
        Image(systemName: "text.page.badge.magnifyingglass")
            .font(.system(size: 15, weight: .medium, design: .rounded))
            .foregroundStyle(.gray)
    }
}

#Preview {
    OverlaySearchBarSearchIconAtom()
        .padding()
}
