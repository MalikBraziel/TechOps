//
//  InputWithImagePickerView.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:47:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:47:00 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Pure view rendering the input with image picker UI
//  - Composes thumbnails and the input row molecule
//
//  DATA FLOW:
//  1a) Compound ─────state────▶ InputWithImagePickerView
//  1b) View ─────compose────▶ Thumbnail atoms + Input row molecule
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ InputWithImagePickerCompound │────▶│ InputWithImagePickerView      │
//  │ (compound)                   │     │ (view)                        │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - DesignSystem.md
//  - SwiftUXRefactoring.md
//
// =============================================================================
//

import SwiftUI

// MARK: - Input With Image Picker View

/// Pure view composing the input with image picker UI.
struct InputWithImagePickerView: View {
    @Binding var text: String
    let selectedImages: [InputWithImagePickerImageItem]
    @Binding var isShowingImagePicker: Bool
    let onAttachmentTapped: () -> Void
    let onImageRemoved: (UUID) -> Void
    let onImagesLoaded: ([InputWithImagePickerImageItem]) -> Void
    let onSendTapped: () -> Void

    // MARK: - UI Composition

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            if !selectedImages.isEmpty {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 8) {
                        ForEach(selectedImages) { imageItem in
                            if let image = imageItem.uiImage {
                                InputWithImagePickerThumbnailAtom(image: image) {
                                    withAnimation {
                                        onImageRemoved(imageItem.id)
                                    }
                                }
                            }
                        }
                    }
                    .padding(.horizontal, 8)
                    .padding(.vertical, 6)
                }
                .transition(.asymmetric(
                    insertion: .opacity.combined(with: .move(edge: .bottom)),
                    removal: .opacity.combined(with: .move(edge: .bottom))
                ))
            }

            InputWithImagePickerInputRowMolecule(
                text: $text,
                onAttachmentTapped: onAttachmentTapped,
                onSendTapped: onSendTapped
            )
        }
        .padding(6)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(Color(.systemGray6).opacity(0.5))
        )
        .sheet(isPresented: $isShowingImagePicker) {
            InputWithImagePickerMultiImagePicker(
                isPresented: $isShowingImagePicker,
                selectionLimit: 4,
                onImagesLoaded: onImagesLoaded
            )
        }
        .animation(.spring(response: 0.3, dampingFraction: 0.7), value: selectedImages.count)
    }
}

#Preview {
    InputWithImagePickerView(
        text: .constant(""),
        selectedImages: InputWithImagePickerFixtures.sampleImages,
        isShowingImagePicker: .constant(false),
        onAttachmentTapped: {},
        onImageRemoved: { _ in },
        onImagesLoaded: { _ in },
        onSendTapped: {}
    )
    .padding()
    .background(Color.black)
}
