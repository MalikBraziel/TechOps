//
//  ShowPreviewCardActionButtonAtom.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:45:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 02, 2026 @ 12:45:00 AM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Atom for the primary action button in ShowPreviewCard
//  - Encapsulates the play icon + action text styling
//
//  DATA FLOW:
//  1a) Parent View ─────props────▶ ShowPreviewCardActionButtonAtom
//  1b) Atom ─────tap───────▶ onTap
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ Parent View                  │────▶│ ShowPreviewCardActionButtonAtom │
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

// MARK: - Action Button Atom

/// Capsule action button used in the show preview card.
struct ShowPreviewCardActionButtonAtom: View {
    let title: String
    let onTap: () -> Void

    var body: some View {
        Button(action: onTap) {
            HStack(spacing: 4) {
                Image(systemName: "play.fill")
                Text(title)
            }
        }
        .buttonStyle(ShowPreviewCardActionButtonStyle())
    }
}

private struct ShowPreviewCardActionButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(.footnote, weight: .medium))
            .foregroundStyle(.black)
            .padding(.vertical, 6)
            .padding(.horizontal, 10)
            .background(.white)
            .clipShape(Capsule())
            .opacity(configuration.isPressed ? 0.7 : 1)
    }
}

#Preview {
    ShowPreviewCardActionButtonAtom(title: "Trailer", onTap: {})
        .padding()
}
