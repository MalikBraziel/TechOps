//
//  InputWithImagePickerAttachmentButtonAtom.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:47:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:47:00 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Atom rendering the attachment button for the input row
//  - Matches SwiftUX iconography and sizing
//
//  DATA FLOW:
//  1a) Parent View ─────action────▶ InputWithImagePickerAttachmentButtonAtom
//  1b) Atom ─────action────▶ Parent View
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ InputWithImagePickerInputRow │────▶│ InputWithImagePickerAttachment │
//  │ (molecule)                   │     │ Button Atom (atom)             │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - DesignSystem.md
//
// =============================================================================
//

import SwiftUI

// MARK: - Attachment Button Atom

/// Attachment button atom used in the input row.
struct InputWithImagePickerAttachmentButtonAtom: View {
    let action: () -> Void

    // MARK: - UI Composition

    var body: some View {
        Button(action: action) {
            Image(systemName: "paperclip")
                .font(.system(.subheadline, weight: .medium))
                .foregroundColor(.primary)
        }
    }
}
