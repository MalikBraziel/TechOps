//
//  ShowPreviewCardDetailsMolecule.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:45:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 02, 2026 @ 12:45:00 AM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Molecule for show preview title, description, and rating metadata
//  - Composes stacked text and the ratings row
//
//  DATA FLOW:
//  1a) Parent View ─────props────▶ ShowPreviewCardDetailsMolecule
//  1b) Molecule ─────compose────▶ Text + rating row
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ Parent View                  │────▶│ ShowPreviewCardDetailsMolecule │
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

// MARK: - Details Molecule

/// Textual details for the show preview card.
struct ShowPreviewCardDetailsMolecule: View {
    let name: String
    let info: String
    let rating: Double
    let reviews: Int
    let category: String

    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(name)
                .font(.system(.subheadline, weight: .semibold))
                .foregroundStyle(.white)

            Text(info)
                .font(.system(.footnote, weight: .regular))
                .foregroundStyle(.white)
                .lineLimit(3)

            HStack(spacing: 2) {
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    Text("\(String(format: "%.1f", rating)) (\(reviews))")
                }

                Text("· \(category)")
                    .textCase(.uppercase)
            }
            .foregroundStyle(.white.opacity(0.7))
            .font(.system(.footnote, weight: .medium))
        }
    }
}

#Preview {
    ShowPreviewCardDetailsMolecule(
        name: "Echoes of Aether",
        info: "In a floating archipelago powered by ancient elemental forces...",
        rating: 4.8,
        reviews: 2584,
        category: "Fantasy"
    )
    .padding()
    .background(Color.black)
}
