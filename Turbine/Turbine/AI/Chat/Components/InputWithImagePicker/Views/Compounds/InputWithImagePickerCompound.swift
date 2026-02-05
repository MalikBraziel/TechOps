//
//  InputWithImagePickerCompound.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:47:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:47:00 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Compound binding the input with image picker view to its ViewModel
//  - Handles user interaction events and state binding
//
//  DATA FLOW:
//  1a) Compound ─────async event────▶ ViewModel.send(event)
//  1b) ViewModel ─────state──────▶ InputWithImagePickerView
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ InputWithImagePickerCompound │────▶│ InputWithImagePickerViewModel │
//  │ (compound)                   │     │ (@Observable)                 │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - Architecture.md
//  - StateMachine.md
//
// =============================================================================
//

import SwiftUI

// MARK: - Input With Image Picker Compound

/// Compound binding the input with image picker view to its stateful ViewModel.
struct InputWithImagePickerCompound: View {
    @State private var viewModel: InputWithImagePickerViewModel

    init(viewModel: InputWithImagePickerViewModel) {
        _viewModel = State(wrappedValue: viewModel)
    }

    // MARK: - Data Flow

    var body: some View {
        InputWithImagePickerView(
            text: Binding(
                get: { viewModel.state.text },
                set: { viewModel.send(.textChanged($0)) }
            ),
            selectedImages: viewModel.state.selectedImages,
            isShowingImagePicker: Binding(
                get: { viewModel.state.isShowingImagePicker },
                set: { newValue in
                    viewModel.send(newValue ? .attachmentTapped : .imagePickerDismissed)
                }
            ),
            onAttachmentTapped: { viewModel.send(.attachmentTapped) },
            onImageRemoved: { viewModel.send(.imageRemoved($0)) },
            onImagesLoaded: { viewModel.send(.imagesLoaded($0)) },
            onSendTapped: { viewModel.send(.sendTapped) }
        )
    }
}

#Preview {
    InputWithImagePickerCompound(
        viewModel: InputWithImagePickerViewModel(
            state: InputWithImagePickerState(
                text: "",
                selectedImages: InputWithImagePickerFixtures.sampleImages,
                isShowingImagePicker: false,
                isExpanded: true
            ),
            sendingService: InputWithImagePickerSendingService()
        )
    )
    .padding()
    .background(Color.black)
}
