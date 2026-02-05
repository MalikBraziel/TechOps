//
//  GroupEventCardView.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:59:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:39:11 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Pure view rendering the group event card UI
//  - Composes the header and map molecules with styling
//
//  DATA FLOW:
//  1a) Compound ─────state────▶ GroupEventCardView
//  1b) View ─────compose────▶ Header + Map molecules
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ GroupEventCardCompound       │────▶│ GroupEventCardView            │
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

// MARK: - Group Event Card View

/// Pure view composing the group event card UI.
struct GroupEventCardView: View {
    let event: GroupEventCardEventData
    let isSelected: Bool
    let onAnnotationTapped: () -> Void
    let onOverflowTapped: () -> Void

    init(
        event: GroupEventCardEventData,
        isSelected: Bool,
        onAnnotationTapped: @escaping () -> Void,
        onOverflowTapped: @escaping () -> Void = {}
    ) {
        self.event = event
        self.isSelected = isSelected
        self.onAnnotationTapped = onAnnotationTapped
        self.onOverflowTapped = onOverflowTapped
    }

    // MARK: - UI Composition

    var body: some View {
        VStack(spacing: 16) {
            GroupEventCardHeaderMolecule(
                title: event.name,
                date: event.date,
                onOverflowTap: onOverflowTapped
            )

            GroupEventCardMapMolecule(
                event: event,
                isSelected: isSelected,
                onAnnotationTapped: onAnnotationTapped
            )
        }
        .padding(12)
        .overlay {
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color(uiColor: .separator).opacity(0.3), lineWidth: 1)
        }
    }
}

#Preview {
    GroupEventCardView(
        event: GroupEventCardFixtures.sampleEvent,
        isSelected: false,
        onAnnotationTapped: {}
    )
    .padding(.horizontal, 16)
}
