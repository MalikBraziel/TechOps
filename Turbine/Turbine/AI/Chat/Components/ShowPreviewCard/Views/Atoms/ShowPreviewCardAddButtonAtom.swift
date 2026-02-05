//
//  ShowPreviewCardAddButtonAtom.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:45:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 02, 2026 @ 12:45:00 AM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Atom for the add/checkmark button in ShowPreviewCard
//  - Handles the toggled add state visuals
//
//  DATA FLOW:
//  1a) Parent View ─────props────▶ ShowPreviewCardAddButtonAtom
//  1b) Atom ─────tap───────▶ onTap
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ Parent View                  │────▶│ ShowPreviewCardAddButtonAtom │
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

// MARK: - Add Button Atom

/// Circular plus/check button for adding a show preview.
struct ShowPreviewCardAddButtonAtom: View {
    let isAdded: Bool
    let onTap: () -> Void

    var body: some View {
        Button(action: onTap) {
            Image(systemName: isAdded ? "checkmark" : "plus")
                .font(.system(.footnote, weight: .medium))
                .foregroundStyle(.white)
                .symbolEffect(.bounce, value: isAdded)
                .padding(6)
                .background(.ultraThinMaterial)
                .clipShape(Circle())
        }
    }
}

#Preview {
    ShowPreviewCardAddButtonAtom(isAdded: false, onTap: {})
        .padding()
}
