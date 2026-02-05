//
//  GroupEventCardOverflowButtonAtom.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:48:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:33:57 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Atom for the overflow "ellipsis" button in the card header
//
//  DATA FLOW:
//  1a) Parent View ─────action────▶ GroupEventCardOverflowButtonAtom
//  1b) Atom ─────render───────▶ Button(icon)
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ Parent View                  │────▶│ GroupEventCardOverflowButtonAtom│
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

// MARK: - Overflow Button Atom

/// Overflow button used in the group event card header.
struct GroupEventCardOverflowButtonAtom: View {
    let action: () -> Void

    init(action: @escaping () -> Void = {}) {
        self.action = action
    }

    var body: some View {
        Button(action: action) {
            Image(systemName: "ellipsis")
                .foregroundStyle(.secondary)
        }
        .buttonStyle(.plain)
    }
}
