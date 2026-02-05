//
//  CaloriesBreakdownFixtures.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:05:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactor Agent
//
//  Last_Updated: February 01, 2026 @ 11:10:46 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactor Agent
//
//  PURPOSE:
//  - Preview fixtures for CaloriesBreakdown components
//  - Provides deterministic sample data for UI parity
//
//  DATA FLOW:
//  1a) Fixtures ─────snapshot────▶ CaloriesBreakdownSnapshot
//  1b) Snapshot ─────summary────▶ CaloriesBreakdownSummary
//  1c) Summary ─────preview────▶ SwiftUI Previews
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ CaloriesBreakdownFixtures    │────▶│ CaloriesBreakdownSummary      │
//  │ (fixture source)             │     │ (value type)                 │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - Architecture.md
//
// =============================================================================
//

import Foundation

// MARK: - Fixtures

enum CaloriesBreakdownFixtures {
    static var yesterdayTotal: Double { 8000 }

    static var snapshot: CaloriesBreakdownSnapshot {
        CaloriesBreakdownSnapshot(entries: sampleData, yesterdayTotal: yesterdayTotal)
    }

    static var summary: CaloriesBreakdownSummary {
        CaloriesBreakdownSummary(snapshot: snapshot)
    }

    static var sampleData: [CaloriesData] {
        let calendar = Calendar.current
        var components = DateComponents()
        components.hour = 2

        let startDate = calendar.date(from: components) ?? Date()

        return [
            CaloriesData(type: .walking, amount: 180, date: calendar.date(byAdding: .hour, value: 0, to: startDate) ?? Date()),
            CaloriesData(type: .walking, amount: 320, date: calendar.date(byAdding: .hour, value: 3, to: startDate) ?? Date()),
            CaloriesData(type: .walking, amount: 450, date: calendar.date(byAdding: .hour, value: 6, to: startDate) ?? Date()),
            CaloriesData(type: .walking, amount: 280, date: calendar.date(byAdding: .hour, value: 9, to: startDate) ?? Date()),
            CaloriesData(type: .walking, amount: 390, date: calendar.date(byAdding: .hour, value: 12, to: startDate) ?? Date()),
            CaloriesData(type: .walking, amount: 420, date: calendar.date(byAdding: .hour, value: 15, to: startDate) ?? Date()),
            CaloriesData(type: .running, amount: 650, date: calendar.date(byAdding: .hour, value: 1, to: startDate) ?? Date()),
            CaloriesData(type: .running, amount: 720, date: calendar.date(byAdding: .hour, value: 4, to: startDate) ?? Date()),
            CaloriesData(type: .running, amount: 850, date: calendar.date(byAdding: .hour, value: 7, to: startDate) ?? Date()),
            CaloriesData(type: .running, amount: 920, date: calendar.date(byAdding: .hour, value: 10, to: startDate) ?? Date()),
            CaloriesData(type: .running, amount: 780, date: calendar.date(byAdding: .hour, value: 13, to: startDate) ?? Date()),
            CaloriesData(type: .workout, amount: 980, date: calendar.date(byAdding: .hour, value: 2, to: startDate) ?? Date()),
            CaloriesData(type: .workout, amount: 1100, date: calendar.date(byAdding: .hour, value: 5, to: startDate) ?? Date()),
            CaloriesData(type: .workout, amount: 1200, date: calendar.date(byAdding: .hour, value: 8, to: startDate) ?? Date()),
            CaloriesData(type: .workout, amount: 1050, date: calendar.date(byAdding: .hour, value: 11, to: startDate) ?? Date()),
            CaloriesData(type: .workout, amount: 890, date: calendar.date(byAdding: .hour, value: 14, to: startDate) ?? Date())
        ]
    }
}
