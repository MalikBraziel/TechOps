//
//  ImagesCollectionPreviewThumbnailAtom.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:37:30 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:37:30 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Atom responsible for rendering a single thumbnail image
//  - Ensures images scale-to-fill while clipping overflow
//
//  DATA FLOW:
//  1a) Parent View ─────source────▶ ImagesCollectionPreviewThumbnailAtom
//  1b) Atom ──────────render────▶ SwiftUI Image
//
//  OBJECTS:
//  ┌────────────────────────────────────────┐     ┌────────────────────────────────────────┐
//  │ ImagesCollectionPreviewCardMolecule    │────▶│ ImagesCollectionPreviewThumbnailAtom    │
//  │ (molecule)                             │     │ (atom)                                   │
//  └────────────────────────────────────────┘     └────────────────────────────────────────┘
//
//  REFERENCES:
//  - DesignSystem.md
//  - Architecture.md
//
// =============================================================================
//

import SwiftUI

// MARK: - Thumbnail Atom

/// Atom rendering a single image thumbnail for the collection preview grid.
struct ImagesCollectionPreviewThumbnailAtom: View {
    let imageSource: ImagesCollectionPreviewImageSource

    init(imageSource: ImagesCollectionPreviewImageSource) {
        self.imageSource = imageSource
    }

    // MARK: - UI Composition

    var body: some View {
        imageSource.image
            .resizable()
            .scaledToFill()
            .clipped()
    }
}

#Preview {
    ImagesCollectionPreviewThumbnailAtom(imageSource: .system(name: "photo"))
        .frame(width: 140, height: 110)
        .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
        .padding()
        .background(Color.black)
}
