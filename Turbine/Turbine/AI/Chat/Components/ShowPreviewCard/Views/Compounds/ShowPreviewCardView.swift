//
//  ShowPreviewCardView.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:45:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 02, 2026 @ 01:11:37 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Pure view rendering the show preview card UI
//  - Composes the details and footer molecules with styling
//
//  DATA FLOW:
//  1a) Compound ─────state────▶ ShowPreviewCardView
//  1b) View ─────compose────▶ Details + Footer molecules
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ ShowPreviewCardCompound      │────▶│ ShowPreviewCardView           │
//  │ (compound)                   │     │ (view)                        │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - DesignSystem.md
//  - Architecture.md
//
// =============================================================================
//

import SwiftUI

// MARK: - Show Preview Card View

/// Pure view composing the show preview card UI.
struct ShowPreviewCardView: View {
    let data: ShowPreviewCardData
    let dominantColor: Color
    let isAdded: Bool
    let onAddTapped: () -> Void
    let onActionTapped: () -> Void

    init(
        data: ShowPreviewCardData,
        dominantColor: Color,
        isAdded: Bool,
        onAddTapped: @escaping () -> Void,
        onActionTapped: @escaping () -> Void
    ) {
        self.data = data
        self.dominantColor = dominantColor
        self.isAdded = isAdded
        self.onAddTapped = onAddTapped
        self.onActionTapped = onActionTapped
    }

    // MARK: - UI Composition

    var body: some View {
        ZStack(alignment: .bottom) {
            if let image = UIImage.showPreviewCardImage(named: data.imageName) {
                Image(uiImage: image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 230, height: 300)
                    .clipped()
            } else {
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color(uiColor: .secondarySystemBackground))
                    .frame(width: 230, height: 300)
                    .overlay {
                        Image(systemName: "photo")
                            .font(.system(size: 28, weight: .medium))
                            .foregroundStyle(.white.opacity(0.6))
                    }
            }

            VStack(alignment: .leading, spacing: 10) {
                ShowPreviewCardDetailsMolecule(
                    name: data.name,
                    info: data.info,
                    rating: data.rating,
                    reviews: data.reviews,
                    category: data.category
                )

                ShowPreviewCardFooterMolecule(
                    actionTitle: data.actionText,
                    isAdded: isAdded,
                    onActionTapped: onActionTapped,
                    onAddTapped: onAddTapped
                )
            }
            .padding(.top, 6)
            .padding(.horizontal, 12)
            .padding(.bottom, 12)
            .background(
                LinearGradient(
                    colors: [.clear, dominantColor],
                    startPoint: .top,
                    endPoint: .bottom
                )
            )
        }
        .frame(width: 230)
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    ShowPreviewCardView(
        data: ShowPreviewCardFixtures.sampleCard,
        dominantColor: .black,
        isAdded: false,
        onAddTapped: {},
        onActionTapped: {}
    )
    .padding()
    .background(Color(uiColor: .systemGray6))
}
