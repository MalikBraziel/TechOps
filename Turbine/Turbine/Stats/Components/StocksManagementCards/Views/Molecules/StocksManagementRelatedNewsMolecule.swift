//
//  StocksManagementRelatedNewsMolecule.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:10:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:55:28 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Molecule rendering the related news section with horizontal scroll
//
//  DATA FLOW:
//  1a) Parent View ─────news────▶ StocksManagementRelatedNewsMolecule
//  1b) Molecule ─────render────▶ News cards carousel
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ Parent View                  │────▶│ StocksManagementRelatedNews   │
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

// MARK: - Related News Molecule

/// Section displaying related news items in a horizontal scroll.
struct StocksManagementRelatedNewsMolecule: View {
    let items: [StocksNewsItem]
    var onSelect: (StocksNewsItem) -> Void = { _ in }

    // MARK: - UI Composition

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            StocksManagementCardHeaderMolecule(title: "Related News", showsControls: false)
                .padding(.top, 12)
                .padding(.horizontal, 12)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 4) {
                    ForEach(items) { item in
                        Button {
                            onSelect(item)
                        } label: {
                            StocksManagementNewsCardMolecule(item: item)
                        }
                        .buttonStyle(.plain)
                    }
                }
                .scrollTargetLayout()
            }
            .scrollTargetBehavior(.viewAligned)
            .padding(.horizontal, 4)
            .padding(.bottom, 4)
        }
        .background(Color(uiColor: .systemGray6))
        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
    }
}
