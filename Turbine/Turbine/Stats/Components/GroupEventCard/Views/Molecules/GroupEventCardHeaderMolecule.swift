//
//  GroupEventCardHeaderMolecule.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:55:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:33:59 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Molecule for the group event card header details
//  - Composes title, overflow action, and event metadata
//
//  DATA FLOW:
//  1a) Parent View ─────props────▶ GroupEventCardHeaderMolecule
//  1b) Molecule ─────compose────▶ Atoms + Text
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ Parent View                  │────▶│ GroupEventCardHeaderMolecule  │
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

// MARK: - Header Molecule

/// Header molecule showing the event name, overflow action, and date/time metadata.
struct GroupEventCardHeaderMolecule: View {
    let title: String
    let date: Date
    let onOverflowTap: () -> Void

    init(title: String, date: Date, onOverflowTap: @escaping () -> Void = {}) {
        self.title = title
        self.date = date
        self.onOverflowTap = onOverflowTap
    }

    // MARK: - UI Composition

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            HStack {
                Text(title)
                    .font(.system(.headline, weight: .semibold))
                    .foregroundStyle(.primary)
                Spacer()
                GroupEventCardOverflowButtonAtom(action: onOverflowTap)
            }

            HStack(spacing: 10) {
                GroupEventCardInfoAtom(
                    icon: Image(systemName: "calendar"),
                    text: date.formatted(date: .abbreviated, time: .omitted)
                )
                GroupEventCardInfoAtom(
                    icon: Image(systemName: "clock"),
                    text: date.formatted(date: .omitted, time: .shortened)
                )
            }
        }
    }
}

#Preview {
    GroupEventCardHeaderMolecule(title: "Barry's Bootcamp", date: Date())
        .padding()
}
