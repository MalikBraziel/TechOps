//
//  ImagesCollectionPreviewMetadataMolecule.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:37:30 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:37:30 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Molecule rendering the collection title and metadata line
//  - Formats the item count and creator handle for display
//
//  DATA FLOW:
//  1a) Parent View ─────props────▶ ImagesCollectionPreviewMetadataMolecule
//  1b) Molecule ─────render────▶ Title + metadata text
//
//  OBJECTS:
//  ┌────────────────────────────────────────┐     ┌────────────────────────────────────────┐
//  │ ImagesCollectionPreviewCardMolecule    │────▶│ ImagesCollectionPreviewMetadataMolecule │
//  │ (molecule)                             │     │ (molecule)                               │
//  └────────────────────────────────────────┘     └────────────────────────────────────────┘
//
//  REFERENCES:
//  - DesignSystem.md
//
// =============================================================================
//

import SwiftUI

// MARK: - Metadata Molecule

/// Molecule displaying the collection title and supporting metadata line.
struct ImagesCollectionPreviewMetadataMolecule: View {
    let title: String
    let itemCount: Int
    let creatorHandle: String

    init(title: String, itemCount: Int, creatorHandle: String) {
        self.title = title
        self.itemCount = itemCount
        self.creatorHandle = creatorHandle
    }

    // MARK: - UI Composition

    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(title)
                .font(.system(.headline, weight: .semibold))
                .foregroundStyle(.primary)

            Text("\(itemCount) items • \(creatorDisplayHandle)")
                .font(.system(.subheadline))
                .foregroundStyle(.secondary)
        }
    }

    // MARK: - Helpers

    private var creatorDisplayHandle: String {
        creatorHandle.hasPrefix("@") ? creatorHandle : "@\(creatorHandle)"
    }
}

#Preview {
    ImagesCollectionPreviewMetadataMolecule(title: "Nature", itemCount: 42, creatorHandle: "dorian")
        .padding()
        .background(Color.black)
}
