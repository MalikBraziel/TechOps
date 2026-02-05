//
//  GroupEventCardAnnotationMolecule.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:55:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:34:36 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Molecule that renders the event map annotation
//  - Shows the central icon and radial member avatars when selected
//
//  DATA FLOW:
//  1a) Parent View ─────props────▶ GroupEventCardAnnotationMolecule
//  1b) Molecule ─────compose────▶ LocationIconAtom + MemberAvatarAtom
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ Parent View                  │────▶│ GroupEventCardAnnotationMol   │
//  │ (molecule/compound)          │     │ (molecule)                    │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - DesignSystem.md
//  - Architecture.md
//
// =============================================================================
//

import SwiftUI

// MARK: - Annotation Molecule

/// Map annotation showing the event icon and optional member ring.
struct GroupEventCardAnnotationMolecule: View {
    let event: GroupEventCardEventData
    let isSelected: Bool

    // MARK: - UI Composition

    var body: some View {
        ZStack {
            GroupEventCardLocationIconAtom(iconName: event.type.iconName, isSelected: isSelected)

            if isSelected {
                ForEach(Array(event.members.prefix(6).enumerated()), id: \.element.id) { index, _ in
                    let position = position(
                        for: index,
                        total: min(event.members.count, 6),
                        radius: 46
                    )

                    GroupEventCardMemberAvatarAtom(size: 32)
                        .offset(x: position.x, y: position.y)
                        .transition(
                            .asymmetric(
                                insertion: .scale(scale: 0, anchor: .center)
                                    .combined(with: .opacity)
                                    .animation(
                                        .spring(response: 0.4, dampingFraction: 0.7)
                                            .delay(Double(index) * 0.05)
                                    ),
                                removal: .scale(scale: 0, anchor: .center)
                                    .combined(with: .opacity)
                                    .animation(.easeOut(duration: 0.2))
                            )
                        )
                }
            }
        }
    }

    // MARK: - Layout Helpers

    private func position(for index: Int, total: Int, radius: CGFloat) -> CGPoint {
        let angle = (2 * .pi / Double(total)) * Double(index)
        return CGPoint(
            x: radius * CGFloat(cos(angle)),
            y: radius * CGFloat(sin(angle))
        )
    }
}

#Preview {
    GroupEventCardAnnotationMolecule(event: GroupEventCardFixtures.sampleEvent, isSelected: true)
        .padding()
}
