//
//  InputWithImagePickerReducer.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:46:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:46:00 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Pure reducer for InputWithImagePicker state transitions
//  - Returns next state and commands based on events
//
//  DATA FLOW:
//  1a) ViewModel ─────event────▶ Reducer.reduce
//  1b) Reducer ─────state────▶ ViewModel.state
//  1c) Reducer ─────command──▶ ViewModel.handle(command)
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ InputWithImagePickerReducer  │────▶│ InputWithImagePickerState     │
//  │ (pure reducer)               │     │ (value type)                 │
//  └──────────────────────────────┘     └──────────────────────────────┘
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ InputWithImagePickerReducer  │────▶│ InputWithImagePickerCommand   │
//  │ (pure reducer)               │     │ (value type)                 │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - StateMachine.md
//  - Architecture.md
//
// =============================================================================
//

import Foundation

// MARK: - Reducer

/// Pure reducer for input with image picker state transitions.
enum InputWithImagePickerReducer {
    static func reduce(
        state: inout InputWithImagePickerState,
        event: InputWithImagePickerEvent
    ) -> [InputWithImagePickerCommand] {
        switch event {
        case .textChanged(let text):
            state.text = text
            return []
        case .attachmentTapped:
            state.isShowingImagePicker = true
            return []
        case .imagePickerDismissed:
            state.isShowingImagePicker = false
            return []
        case .imagesLoaded(let images):
            state.selectedImages.append(contentsOf: images)
            state.isExpanded = !state.selectedImages.isEmpty
            return []
        case .imageRemoved(let id):
            state.selectedImages.removeAll { $0.id == id }
            state.isExpanded = !state.selectedImages.isEmpty
            return []
        case .sendTapped:
            guard !state.text.isEmpty else { return [] }
            return [.sendMessage(text: state.text, images: state.selectedImages)]
        }
    }
}
