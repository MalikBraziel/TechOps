//
//  OverlaySearchBarCloseButtonAtom.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:38:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:38:00 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Atom rendering the dismiss button for the overlay search bar
//
//  DATA FLOW:
//  1a) Parent View ─────props────▶ OverlaySearchBarCloseButtonAtom
//  1b) Atom ─────event───────▶ onTap action
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ Parent View                  │────▶│ OverlaySearchBarCloseButtonAtom│
//  │ (molecule/compound)          │     │ (atom)                        │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - DesignSystem.md
//
// =============================================================================
//

import SwiftUI

// MARK: - Close Button Atom

/// Close button used to dismiss the overlay search bar.
struct OverlaySearchBarCloseButtonAtom: View {
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Image(systemName: "xmark")
                .font(.system(size: 15, weight: .medium, design: .rounded))
                .foregroundStyle(.gray)
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    OverlaySearchBarCloseButtonAtom(action: {})
        .padding()
}
