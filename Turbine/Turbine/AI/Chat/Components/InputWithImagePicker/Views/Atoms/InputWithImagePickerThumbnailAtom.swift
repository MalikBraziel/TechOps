//
//  InputWithImagePickerThumbnailAtom.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:47:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:47:00 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Atom rendering a selected image thumbnail with a delete affordance
//  - Matches SwiftUX thumbnail styling and transition behavior
//
//  DATA FLOW:
//  1a) Parent View ─────props────▶ InputWithImagePickerThumbnailAtom
//  1b) Atom ─────action────▶ Parent View
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ InputWithImagePickerView     │────▶│ InputWithImagePickerThumbnail │
//  │ (view)                       │     │ Atom (atom)                   │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - DesignSystem.md
//  - SwiftUXRefactoring.md
//
// =============================================================================
//

import SwiftUI

// MARK: - Thumbnail Atom

/// Thumbnail atom showing a selected image with a delete action.
struct InputWithImagePickerThumbnailAtom: View {
    let image: UIImage
    let onDelete: () -> Void

    // MARK: - UI Composition

    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image(uiImage: image)
                .resizable()
                .scaledToFill()
                .frame(width: 70, height: 70)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color(.systemGray4), lineWidth: 1)
                )

            Button(action: onDelete) {
                Image(systemName: "xmark.circle.fill")
                    .font(.system(.headline, weight: .medium))
                    .foregroundStyle(.white, Color(.systemGray))
                    .background(Color.white.clipShape(Circle()))
                    .offset(x: 6, y: -6)
            }
        }
        .transition(.asymmetric(
            insertion: .scale(scale: 0.8).combined(with: .move(edge: .bottom)),
            removal: .scale(scale: 0.6).combined(with: .move(edge: .bottom))
        ))
    }
}
