//
//  InputWithImagePickerInputRowMolecule.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:47:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:47:00 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Molecule composing the text field and action buttons
//  - Matches SwiftUX input row styling and spacing
//
//  DATA FLOW:
//  1a) Parent View ─────bind────▶ InputWithImagePickerInputRowMolecule
//  1b) Molecule ─────action────▶ Parent View
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ InputWithImagePickerView     │────▶│ InputWithImagePickerInputRow  │
//  │ (view)                       │     │ Molecule (molecule)           │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - DesignSystem.md
//
// =============================================================================
//

import SwiftUI

// MARK: - Input Row Molecule

/// Input row molecule combining the prompt text field with attachment and send actions.
struct InputWithImagePickerInputRowMolecule: View {
    @Binding var text: String
    let onAttachmentTapped: () -> Void
    let onSendTapped: () -> Void

    @FocusState private var isTextFieldFocused: Bool

    private var isSendEnabled: Bool {
        !text.isEmpty
    }

    // MARK: - UI Composition

    var body: some View {
        HStack(alignment: .center) {
            TextField("How can Clarity help you today?", text: $text, axis: .vertical)
                .focused($isTextFieldFocused)
                .padding(.vertical, 10)

            HStack(spacing: 10) {
                InputWithImagePickerAttachmentButtonAtom {
                    isTextFieldFocused = false
                    onAttachmentTapped()
                }

                InputWithImagePickerSendButtonAtom(isEnabled: isSendEnabled) {
                    isTextFieldFocused = false
                    onSendTapped()
                }
            }
        }
        .padding(.horizontal, 12)
        .background(Color(uiColor: .secondarySystemBackground))
        .cornerRadius(10)
    }
}
