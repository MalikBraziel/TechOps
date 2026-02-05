//
//  GroupEventCardMemberAvatarAtom.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:48:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:33:57 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Atom for displaying a circular member avatar placeholder
//  - Matches the SwiftUX visual style for the map annotation ring
//
//  DATA FLOW:
//  1a) Parent View ─────props────▶ GroupEventCardMemberAvatarAtom
//  1b) Atom ─────render───────▶ Image + background
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ Parent View                  │────▶│ GroupEventCardMemberAvatarAtom│
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

// MARK: - Member Avatar Atom

/// Displays a circular member avatar icon for the group event annotation.
struct GroupEventCardMemberAvatarAtom: View {
    let size: CGFloat

    init(size: CGFloat = 32) {
        self.size = size
    }

    var body: some View {
        Image(systemName: "person.fill")
            .foregroundStyle(.primary)
            .font(.system(.subheadline))
            .padding(8)
            .background(.secondary)
            .clipShape(Circle())
            .frame(width: size, height: size)
    }
}
