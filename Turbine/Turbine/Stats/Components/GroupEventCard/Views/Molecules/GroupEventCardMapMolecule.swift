//
//  GroupEventCardMapMolecule.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:55:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:34:00 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Molecule rendering the map for the group event card
//  - Hosts the map annotation and selection interaction
//
//  DATA FLOW:
//  1a) Parent View ─────props────▶ GroupEventCardMapMolecule
//  1b) Molecule ─────compose────▶ Map + Annotation
//  1c) Tap Gesture ───event────▶ onAnnotationTapped
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ Parent View                  │────▶│ GroupEventCardMapMolecule     │
//  │ (compound)                   │     │ (molecule)                    │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - DesignSystem.md
//  - Architecture.md
//
// =============================================================================
//

import MapKit
import SwiftUI

// MARK: - Map Molecule

/// Map molecule showing the event location with an interactive annotation.
struct GroupEventCardMapMolecule: View {
    let event: GroupEventCardEventData
    let isSelected: Bool
    let onAnnotationTapped: () -> Void

    init(event: GroupEventCardEventData, isSelected: Bool, onAnnotationTapped: @escaping () -> Void) {
        self.event = event
        self.isSelected = isSelected
        self.onAnnotationTapped = onAnnotationTapped
    }

    // MARK: - UI Composition

    var body: some View {
        Map(position: .constant(event.cameraPosition)) {
            Annotation(event.name, coordinate: event.coordinate) {
                GroupEventCardAnnotationMolecule(event: event, isSelected: isSelected)
                    .onTapGesture {
                        withAnimation(.spring(response: 0.4, dampingFraction: 0.7)) {
                            onAnnotationTapped()
                        }
                    }
            }
            .annotationTitles(.hidden)
        }
        .mapStyle(.standard(
            elevation: .realistic,
            emphasis: .muted,
            pointsOfInterest: .excludingAll,
            showsTraffic: false
        ))
        .cornerRadius(12)
        .frame(height: 200)
    }
}

#Preview {
    GroupEventCardMapMolecule(event: GroupEventCardFixtures.sampleEvent, isSelected: false) {}
        .padding()
}
