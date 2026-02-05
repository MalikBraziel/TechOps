//
//  ImagesCollectionPreviewCardMolecule.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:37:30 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:37:30 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Primary molecule rendering the images collection preview card
//  - Composes the compositional grid and metadata line
//
//  DATA FLOW:
//  1a) Parent View ─────data────▶ ImagesCollectionPreviewCardMolecule
//  1b) Molecule ─────compose────▶ Grid + metadata molecules
//
//  OBJECTS:
//  ┌────────────────────────────────────────┐     ┌────────────────────────────────────────┐
//  │ ImagesCollectionPreviewCardMolecule    │────▶│ ImagesCollectionPreviewCompositionalGrid│
//  │ (molecule)                             │     │ (molecule)                               │
//  └────────────────────────────────────────┘     └────────────────────────────────────────┘
//
//  REFERENCES:
//  - ImagesCollectionPreview.md
//  - DesignSystem.md
//
// =============================================================================
//

import SwiftUI

// MARK: - Images Collection Preview Card Molecule

/// Molecule composing the preview grid and metadata for an image collection.
struct ImagesCollectionPreviewCardMolecule: View {
    let data: ImagesCollectionPreviewCardData

    init(data: ImagesCollectionPreviewCardData) {
        self.data = data
    }

    // MARK: - UI Composition

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            ImagesCollectionPreviewCompositionalGridMolecule(images: data.images)
                .aspectRatio(2, contentMode: .fit)

            ImagesCollectionPreviewMetadataMolecule(
                title: data.title,
                itemCount: data.itemCount,
                creatorHandle: data.creatorHandle
            )
        }
    }
}

#Preview {
    ImagesCollectionPreviewCardMolecule(data: ImagesCollectionPreviewFixtures.sampleData)
        .padding(.horizontal, 24)
        .padding(.vertical, 16)
        .background(Color.black)
}
