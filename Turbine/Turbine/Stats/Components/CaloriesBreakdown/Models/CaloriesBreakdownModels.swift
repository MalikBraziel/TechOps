//
//  CaloriesBreakdownModels.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:05:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactor Agent
//
//  Last_Updated: February 01, 2026 @ 11:09:35 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactor Agent
//
//  PURPOSE:
//  - Domain models for calories breakdown charts
//  - Defines activity types, entries, snapshots, and summaries
//  - Sendable value types for the Stats feature
//
//  DATA FLOW:
//  1a) Service ─────snapshot────▶ CaloriesBreakdownSummary.init
//  1b) Summary ─────data────────▶ Views
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ CaloriesBreakdownService     │────▶│ CaloriesBreakdownSummary      │
//  │ (service)                    │     │ (value type)                 │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - Architecture.md
//  - Concurrency.md
//
// =============================================================================
//

import Foundation
import SwiftUI
import UIKit

// MARK: - Activity Type

/// Defines activity categories for the calories breakdown chart.
enum ActivityType: String, CaseIterable, Sendable {
    case walking
    case running
    case workout

    var title: String {
        switch self {
        case .walking:
            return "Walking"
        case .running:
            return "Running"
        case .workout:
            return "Workout"
        }
    }

    var color: Color {
        switch self {
        case .walking:
            return Color(uiColor: .systemGreen.withProminence(.primary))
        case .running:
            return Color(uiColor: .systemGreen.withProminence(.secondary))
        case .workout:
            return Color(uiColor: .systemGreen.withProminence(.tertiary))
        }
    }
}

// MARK: - Entry Model

/// Represents a single calories entry in the breakdown chart.
struct CaloriesData: Identifiable, Sendable {
    let id: UUID
    let type: ActivityType
    let amount: Double
    let date: Date

    init(id: UUID = UUID(), type: ActivityType, amount: Double, date: Date) {
        self.id = id
        self.type = type
        self.amount = amount
        self.date = date
    }
}

// MARK: - Snapshot Model

/// Snapshot used to render the calories breakdown summary.
struct CaloriesBreakdownSnapshot: Sendable {
    var entries: [CaloriesData]
    var yesterdayTotal: Double
}

// MARK: - Summary Model

/// Precomputed summary metrics for the breakdown charts.
struct CaloriesBreakdownSummary: Sendable {
    var entries: [CaloriesData]
    var totalsByType: [ActivityType: Double]
    var totalCalories: Double
    var averageCalories: Double
    var percentageChange: Double

    init(snapshot: CaloriesBreakdownSnapshot) {
        entries = snapshot.entries
        totalsByType = Dictionary(grouping: snapshot.entries, by: \.type)
            .mapValues { items in
                items.reduce(0) { $0 + $1.amount }
            }
        totalCalories = snapshot.entries.reduce(0) { $0 + $1.amount }
        averageCalories = snapshot.entries.isEmpty ? 0 : totalCalories / Double(snapshot.entries.count)
        if snapshot.yesterdayTotal > 0 {
            percentageChange = ((totalCalories - snapshot.yesterdayTotal) / snapshot.yesterdayTotal) * 100
        } else {
            percentageChange = 0
        }
    }
}
