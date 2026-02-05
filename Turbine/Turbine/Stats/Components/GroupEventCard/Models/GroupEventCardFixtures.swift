//
//  GroupEventCardFixtures.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:32:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:33:53 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Preview fixtures for GroupEventCard components
//  - Provides deterministic sample data for UI parity
//
//  DATA FLOW:
//  1a) Fixtures ─────event────▶ GroupEventCardState
//  1b) State ─────preview────▶ SwiftUI Previews
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ GroupEventCardFixtures       │────▶│ GroupEventCardEventData       │
//  │ (fixture source)             │     │ (value type)                  │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - Architecture.md
//
// =============================================================================
//

import Foundation
import MapKit

// MARK: - Fixtures

/// Fixture values for previews and development.
enum GroupEventCardFixtures {
    static var sampleEvents: [GroupEventCardEventData] = [
        GroupEventCardEventData(
            name: "Barry's Bootcamp",
            coordinate: CLLocationCoordinate2D(latitude: 40.7171327, longitude: -74.0077603),
            type: .gym,
            members: [
                GroupEventCardMember(name: "Alex", profileImage: "profile1"),
                GroupEventCardMember(name: "Jamie", profileImage: "profile2"),
                GroupEventCardMember(name: "Taylor", profileImage: "profile3"),
                GroupEventCardMember(name: "Jordan", profileImage: "profile4"),
                GroupEventCardMember(name: "Casey", profileImage: "profile5"),
                GroupEventCardMember(name: "Riley", profileImage: "profile6")
            ],
            date: Calendar.current.date(byAdding: .day, value: 1, to: Date()) ?? Date()
        ),
        GroupEventCardEventData(
            name: "Central Park Picnic",
            coordinate: CLLocationCoordinate2D(latitude: 37.335, longitude: -122.02),
            type: .park,
            members: [
                GroupEventCardMember(name: "Jamie", profileImage: "profile2"),
                GroupEventCardMember(name: "Taylor", profileImage: "profile3")
            ],
            date: Calendar.current.date(byAdding: .day, value: 2, to: Date()) ?? Date()
        )
    ]

    static var sampleEvent: GroupEventCardEventData {
        sampleEvents.first ?? GroupEventCardEventData(
            name: "Sample Event",
            coordinate: CLLocationCoordinate2D(latitude: 37.335, longitude: -122.02),
            type: .park,
            members: [],
            date: Date()
        )
    }
}
