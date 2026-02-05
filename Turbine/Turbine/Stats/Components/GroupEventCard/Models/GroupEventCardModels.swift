//
//  GroupEventCardModels.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:32:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:33:53 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Domain models for the GroupEventCard component
//  - Provides map-ready event data and metadata
//
//  DATA FLOW:
//  1a) Service ─────event────▶ GroupEventCardState
//  1b) State ─────props────▶ GroupEventCardView
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ GroupEventCardService        │────▶│ GroupEventCardEventData       │
//  │ (service)                    │     │ (value type)                  │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - Architecture.md
//  - Concurrency.md
//
// =============================================================================
//

import Foundation
import MapKit
import SwiftUI

// MARK: - Group Event Model

/// Domain model representing a single group event displayed on the map card.
struct GroupEventCardEventData: Identifiable, Sendable {
    let id: UUID
    let name: String
    let coordinate: CLLocationCoordinate2D
    let type: GroupEventCardLocationType
    let members: [GroupEventCardMember]
    let date: Date

    init(
        id: UUID = UUID(),
        name: String,
        coordinate: CLLocationCoordinate2D,
        type: GroupEventCardLocationType,
        members: [GroupEventCardMember],
        date: Date
    ) {
        self.id = id
        self.name = name
        self.coordinate = coordinate
        self.type = type
        self.members = members
        self.date = date
    }

    /// Camera position for the map showing the event coordinate.
    var cameraPosition: MapCameraPosition {
        MapCameraPosition.region(MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        ))
    }
}

// MARK: - Member Model

/// Represents a single participant in the group event.
struct GroupEventCardMember: Identifiable, Sendable {
    let id: UUID
    let name: String
    let profileImage: String

    init(id: UUID = UUID(), name: String, profileImage: String) {
        self.id = id
        self.name = name
        self.profileImage = profileImage
    }
}

// MARK: - Location Type

/// Defines the event location category and iconography.
enum GroupEventCardLocationType: String, CaseIterable, Sendable {
    case gym
    case restaurant
    case park
    case shop

    /// System icon name for the location type.
    var iconName: String {
        switch self {
        case .gym:
            return "dumbbell.fill"
        case .restaurant:
            return "fork.knife"
        case .park:
            return "leaf.fill"
        case .shop:
            return "bag.fill"
        }
    }

    /// Accent color associated with the location type.
    var accentColor: Color {
        switch self {
        case .gym:
            return .gray
        case .restaurant:
            return .orange
        case .park:
            return .green
        case .shop:
            return .purple
        }
    }
}
