//
//  WorkoutZoningBarModels.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:55:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:47:16 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Domain models for WorkoutZoningBar entries and configuration
//  - Provides zone classification helpers for view rendering
//
//  DATA FLOW:
//  1a) Service ─────entries────▶ WorkoutZoningBarState
//  1b) State ─────props────▶ WorkoutZoningBarView
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ WorkoutZoningBarService      │────▶│ WorkoutZoningBarEntry         │
//  │ (service)                    │     │ (value type)                  │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - Architecture.md
//
// =============================================================================
//

import CoreGraphics
import Foundation
import SwiftUI
import UIKit

// MARK: - Entry Model

/// Represents a single workout row in the zoning bar list.
struct WorkoutZoningBarEntry: Identifiable, Sendable {
    let id: UUID
    let workoutName: String
    let completedSets: Int
    let plannedSets: Int

    init(
        id: UUID = UUID(),
        workoutName: String,
        completedSets: Int,
        plannedSets: Int
    ) {
        self.id = id
        self.workoutName = workoutName
        self.completedSets = completedSets
        self.plannedSets = plannedSets
    }
}

// MARK: - Configuration

/// Defines zone counts and layout constants for the zoning bar.
struct WorkoutZoningBarConfiguration: Sendable {
    let restZoneCount: Int
    let growthZoneCount: Int
    let focusZoneCount: Int
    let barHeight: CGFloat
    let barSpacing: CGFloat
    let barCornerRadius: CGFloat

    static let standard = WorkoutZoningBarConfiguration(
        restZoneCount: 5,
        growthZoneCount: 7,
        focusZoneCount: 4,
        barHeight: 40,
        barSpacing: 4,
        barCornerRadius: 5
    )

    var totalBars: Int {
        restZoneCount + growthZoneCount + focusZoneCount
    }
}

// MARK: - Zone

/// Semantic zones for the workout progress bar.
enum WorkoutZoningBarZone: String, CaseIterable, Sendable {
    case rest
    case growth
    case focus

    /// Display title for the zone label.
    var title: String {
        switch self {
        case .rest:
            return "Rest zone"
        case .growth:
            return "Growth zone"
        case .focus:
            return "Focus zone"
        }
    }

    /// Accent color associated with the zone.
    var color: Color {
        switch self {
        case .rest:
            return Color(uiColor: .systemBlue.withProminence(.primary))
        case .growth:
            return Color(uiColor: .systemGreen.withProminence(.primary))
        case .focus:
            return Color(uiColor: .systemYellow.withProminence(.primary))
        }
    }

    /// Returns the zone associated with the completed set count.
    static func zone(
        for completedSets: Int,
        configuration: WorkoutZoningBarConfiguration
    ) -> WorkoutZoningBarZone {
        if completedSets <= configuration.restZoneCount {
            return .rest
        }

        if completedSets <= configuration.restZoneCount + configuration.growthZoneCount {
            return .growth
        }

        return .focus
    }

    /// Returns the zone associated with a specific bar index.
    static func zone(
        forBarIndex index: Int,
        configuration: WorkoutZoningBarConfiguration
    ) -> WorkoutZoningBarZone {
        if index < configuration.restZoneCount {
            return .rest
        }

        if index < configuration.restZoneCount + configuration.growthZoneCount {
            return .growth
        }

        return .focus
    }
}
