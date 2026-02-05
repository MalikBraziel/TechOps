//
//  SavingsSourcesPieChartModels.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:45:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:34:03 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Domain models for the Savings Sources pie chart component
//  - Defines entries, snapshots, and summary totals for the chart UI
//
//  DATA FLOW:
//  1a) Service ─────snapshot────▶ SavingsSourcesPieChartSummary.init
//  1b) Summary ─────data────────▶ Views
//
//  OBJECTS:
//  ┌────────────────────────────────────┐     ┌────────────────────────────────────┐
//  │ SavingsSourcesPieChartService      │────▶│ SavingsSourcesPieChartSummary      │
//  │ (service)                          │     │ (value type)                       │
//  └────────────────────────────────────┘     └────────────────────────────────────┘
//
//  REFERENCES:
//  - Architecture.md
//  - Concurrency.md
//
// =============================================================================
//

import Foundation
import SwiftUI

// MARK: - Entry Model

/// Represents a single savings source entry displayed in the pie chart and list.
struct SavingsSourcesPieChartEntry: Identifiable, Sendable {
    let id: UUID
    let title: String
    let description: String
    let amount: Double
    let color: Color

    init(
        id: UUID = UUID(),
        title: String,
        description: String,
        amount: Double,
        color: Color
    ) {
        self.id = id
        self.title = title
        self.description = description
        self.amount = amount
        self.color = color
    }
}

// MARK: - Snapshot Model

/// Snapshot payload used by services to deliver savings source data.
struct SavingsSourcesPieChartSnapshot: Sendable {
    var entries: [SavingsSourcesPieChartEntry]
    var periodDescription: String
}

// MARK: - Summary Model

/// Aggregated summary of savings sources for UI consumption.
struct SavingsSourcesPieChartSummary: Sendable {
    var entries: [SavingsSourcesPieChartEntry]
    var total: Double
    var periodDescription: String

    init(snapshot: SavingsSourcesPieChartSnapshot) {
        entries = snapshot.entries
        total = snapshot.entries.reduce(0) { $0 + $1.amount }
        periodDescription = snapshot.periodDescription
    }
}
