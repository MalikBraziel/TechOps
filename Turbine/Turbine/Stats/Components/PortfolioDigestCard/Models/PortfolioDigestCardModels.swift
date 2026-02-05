//
//  PortfolioDigestCardModels.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:10:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:55:28 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Domain models for the portfolio digest card component
//  - Defines digest updates, snapshot payloads, and summary state
//
//  DATA FLOW:
//  1a) Service ─────snapshot────▶ PortfolioDigestCardSummary.init
//  1b) Summary ─────data────────▶ Views
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ PortfolioDigestCardService   │────▶│ PortfolioDigestCardSummary    │
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

// MARK: - Update Model

/// Represents a single digest update message shown in the rolling ticker.
struct PortfolioDigestUpdate: Identifiable, Equatable, Sendable {
    let id: UUID
    let message: String

    init(id: UUID = UUID(), message: String) {
        self.id = id
        self.message = message
    }
}

// MARK: - Snapshot Model

/// Snapshot payload used by services to deliver portfolio digest data.
struct PortfolioDigestSnapshot: Sendable {
    var date: Date
    var userName: String
    var balance: Double
    var dailyDelta: Double
    var updates: [PortfolioDigestUpdate]
}

// MARK: - Summary Model

/// Aggregated summary of portfolio digest data for UI consumption.
struct PortfolioDigestCardSummary: Sendable {
    var date: Date
    var userName: String
    var balance: Double
    var dailyDelta: Double
    var updates: [PortfolioDigestUpdate]
    var greeting: String

    init(snapshot: PortfolioDigestSnapshot, calendar: Calendar = .current) {
        date = snapshot.date
        userName = snapshot.userName
        balance = snapshot.balance
        dailyDelta = snapshot.dailyDelta
        updates = snapshot.updates
        greeting = PortfolioDigestGreeting.text(for: snapshot.date, calendar: calendar)
    }

    var isDeltaPositive: Bool {
        dailyDelta >= 0
    }

    var deltaAmountText: String {
        abs(dailyDelta).formatted(.currency(code: "USD"))
    }

    var deltaDirectionText: String {
        isDeltaPositive ? "more than yesterday" : "less than yesterday"
    }
}

// MARK: - Greeting Helper

private enum PortfolioDigestGreeting {
    static func text(for date: Date, calendar: Calendar) -> String {
        let hour = calendar.component(.hour, from: date)
        switch hour {
        case 0..<12:
            return "Good morning"
        case 12..<17:
            return "Good afternoon"
        default:
            return "Good evening"
        }
    }
}
