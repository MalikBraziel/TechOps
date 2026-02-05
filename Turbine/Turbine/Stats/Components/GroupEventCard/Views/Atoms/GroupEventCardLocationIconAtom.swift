//
//  GroupEventCardLocationIconAtom.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:48:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:33:57 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Atom for the central event location icon in the map annotation
//  - Supports selection scale animation
//
//  DATA FLOW:
//  1a) Parent View ─────props────▶ GroupEventCardLocationIconAtom
//  1b) Atom ─────render───────▶ Image + circle background
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ Parent View                  │────▶│ GroupEventCardLocationIconAtom│
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

// MARK: - Location Icon Atom

/// Displays the primary event location icon.
struct GroupEventCardLocationIconAtom: View {
    let iconName: String
    let isSelected: Bool

    var body: some View {
        Image(systemName: iconName)
            .font(.system(size: 22, weight: .bold))
            .foregroundColor(.black)
            .frame(width: 50, height: 50)
            .background(Color.white)
            .clipShape(Circle())
            .scaleEffect(isSelected ? 1.1 : 1.0)
            .animation(.spring(response: 0.3, dampingFraction: 0.7), value: isSelected)
    }
}
