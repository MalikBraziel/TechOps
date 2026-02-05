//
//  InputWithImagePickerSendButtonAtom.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:47:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:47:00 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Atom rendering the send button for the input row
//  - Handles enabled/disabled visual state
//
//  DATA FLOW:
//  1a) Parent View ─────props────▶ InputWithImagePickerSendButtonAtom
//  1b) Atom ─────action────▶ Parent View
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ InputWithImagePickerInputRow │────▶│ InputWithImagePickerSend       │
//  │ (molecule)                   │     │ Button Atom (atom)             │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - DesignSystem.md
//
// =============================================================================
//

import SwiftUI

// MARK: - Send Button Atom

/// Send button atom with enabled/disabled styling.
struct InputWithImagePickerSendButtonAtom: View {
    let isEnabled: Bool
    let action: () -> Void

    // MARK: - UI Composition

    var body: some View {
        Button(action: action) {
            Image(systemName: "arrow.up.circle.fill")
                .font(.system(.headline, weight: .medium))
                .foregroundColor(isEnabled ? .primary : .secondary)
        }
        .disabled(!isEnabled)
    }
}
