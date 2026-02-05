//
//  ImagesCollectionPreviewView.swift
//  Turbine
//
//  Created: February 02, 2026 @ 01:10:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 02, 2026 @ 01:10:00 AM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Pure view rendering the images collection preview card UI
//  - Composes the card molecule with optional loading state styling
//
//  DATA FLOW:
//  1a) Compound ─────state────▶ ImagesCollectionPreviewView
//  1b) View ─────compose────▶ ImagesCollectionPreviewCardMolecule
//
//  OBJECTS:
//  ┌────────────────────────────────────┐     ┌────────────────────────────────────┐
//  │ ImagesCollectionPreviewCompound    │────▶│ ImagesCollectionPreviewView         │
//  │ (compound)                         │     │ (view)                                │
//  └────────────────────────────────────┘     └────────────────────────────────────┘
//
//  REFERENCES:
//  - DesignSystem.md
//  - Architecture.md
//
// =============================================================================
//

import SwiftUI

// MARK: - Images Collection Preview View

/// Pure view composing the images collection preview UI.
struct ImagesCollectionPreviewView: View {
    let data: ImagesCollectionPreviewCardData
    let isLoading: Bool

    init(data: ImagesCollectionPreviewCardData, isLoading: Bool = false) {
        self.data = data
        self.isLoading = isLoading
    }

    // MARK: - UI Composition

    var body: some View {
        ImagesCollectionPreviewCardMolecule(data: data)
            .redacted(reason: isLoading ? .placeholder : [])
    }
}

#Preview {
    ImagesCollectionPreviewView(data: ImagesCollectionPreviewFixtures.sampleData)
        .padding(.horizontal, 24)
        .padding(.vertical, 16)
        .background(Color.black)
}
