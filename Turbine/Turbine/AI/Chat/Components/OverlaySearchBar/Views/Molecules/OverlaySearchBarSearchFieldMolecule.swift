//
//  OverlaySearchBarSearchFieldMolecule.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:40:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:40:00 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Molecule rendering the expanded search field row
//  - Composes search icon, query input, and dismiss action
//
//  DATA FLOW:
//  1a) Parent View ─────binding────▶ TextField
//  1b) Parent View ─────event──────▶ Dismiss button action
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ OverlaySearchBarView         │────▶│ OverlaySearchBarSearchFieldMol│
//  │ (view)                       │     │ (molecule)                   │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - DesignSystem.md
//  - Architecture.md
//
// =============================================================================
//

import SwiftUI

// MARK: - Search Field Molecule

/// Expanded search field row used in the overlay search bar.
struct OverlaySearchBarSearchFieldMolecule: View {
    let namespace: Namespace.ID
    @Binding var query: String
    let isFocused: FocusState<Bool>.Binding
    let onDismiss: () -> Void

    // MARK: - Data Flow

    private var queryBinding: Binding<String> { $query }

    // MARK: - UI Composition

    var body: some View {
        HStack {
            OverlaySearchBarSearchIconAtom()

            TextField("Search anything", text: queryBinding)
                .font(.system(size: 17, weight: .medium, design: .rounded))
                .foregroundStyle(.secondary)
                .focused(isFocused)

            Spacer()

            OverlaySearchBarCloseButtonAtom(action: onDismiss)
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 16)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(uiColor: .secondarySystemFill).opacity(0.4))
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(.ultraThickMaterial, lineWidth: 1)
        )
        .matchedGeometryEffect(id: "searchBar", in: namespace, properties: .frame, isSource: true)
        .frame(height: 52)
        .transition(.asymmetric(insertion: .identity, removal: .offset(y: 1)))
        .padding(.horizontal, 10)
    }
}

#Preview {
    @Namespace var namespace
    @FocusState var focused: Bool

    OverlaySearchBarSearchFieldMolecule(
        namespace: namespace,
        query: .constant(""),
        isFocused: $focused,
        onDismiss: {}
    )
}
