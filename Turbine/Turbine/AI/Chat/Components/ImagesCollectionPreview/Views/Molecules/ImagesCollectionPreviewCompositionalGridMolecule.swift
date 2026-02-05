//
//  ImagesCollectionPreviewCompositionalGridMolecule.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:37:30 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:37:30 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Molecule rendering the compositional image grid layout
//  - Displays a +n overlay when additional images exist
//
//  DATA FLOW:
//  1a) Parent View ─────images────▶ ImagesCollectionPreviewCompositionalGridMolecule
//  1b) Molecule ─────compose────▶ Thumbnail atoms + overlay
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

// MARK: - Compositional Grid Molecule

/// Molecule laying out a 2-column compositional grid with a remaining-count overlay.
struct ImagesCollectionPreviewCompositionalGridMolecule: View {
    let images: [ImagesCollectionPreviewImageSource]
    let cornerRadius: CGFloat

    init(images: [ImagesCollectionPreviewImageSource], cornerRadius: CGFloat = 16) {
        self.images = images
        self.cornerRadius = cornerRadius
    }

    // MARK: - UI Composition

    var body: some View {
        GeometryReader { proxy in
            let width = proxy.size.width
            let height = proxy.size.height
            let rightColumnWidth = width * 0.33
            let leftColumnWidth = width - rightColumnWidth
            let rightRowHeight = height / 2
            let remainingCount = max(0, images.count - 3)

            HStack(spacing: 0) {
                if let firstImage = images.first {
                    ImagesCollectionPreviewThumbnailAtom(imageSource: firstImage)
                        .frame(width: leftColumnWidth, height: height)
                }

                VStack(spacing: 0) {
                    ForEach(Array(images.dropFirst().prefix(2).enumerated()), id: \.offset) { index, image in
                        ImagesCollectionPreviewThumbnailAtom(imageSource: image)
                            .frame(width: rightColumnWidth, height: rightRowHeight)
                            .overlay {
                                if index == 1 && remainingCount > 0 {
                                    Rectangle()
                                        .fill(Color.black.opacity(0.6))
                                        .overlay {
                                            Text("+\(remainingCount)")
                                                .font(.system(.title, weight: .semibold))
                                                .foregroundColor(.white)
                                        }
                                }
                            }
                    }
                }
            }
        }
        .clipShape(RoundedRectangle(cornerRadius: cornerRadius, style: .continuous))
    }
}

#Preview {
    ImagesCollectionPreviewCompositionalGridMolecule(images: ImagesCollectionPreviewFixtures.sampleData.images)
        .aspectRatio(2, contentMode: .fit)
        .padding()
        .background(Color.black)
}
