//
//  SavingsSourcesPieChartServiceProtocol.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:50:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:39:14 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Defines the service boundary for savings sources pie chart data
//  - Supports async snapshot retrieval for the Stats feature
//
//  DATA FLOW:
//  1a) ViewModel ───async request──▶ SavingsSourcesPieChartServiceProtocol.fetchSnapshot()
//  1b) Service  ─────snapshot────▶ ViewModel
//
//  OBJECTS:
//  ┌────────────────────────────────────┐     ┌────────────────────────────────────┐
//  │ SavingsSourcesPieChartViewModel    │────▶│ SavingsSourcesPieChartServiceProtocol│
//  │ (consumer)                          │     │ (protocol)                         │
//  └────────────────────────────────────┘     └────────────────────────────────────┘
//
//  REFERENCES:
//  - Architecture.md
//  - Concurrency.md
//
// =============================================================================
//

import Foundation

// MARK: - Service Protocol

/// Provides savings sources snapshot data for the Stats feature.
protocol SavingsSourcesPieChartServiceProtocol: Sendable {
    /// Fetches the snapshot displayed by the pie chart component.
    func fetchSnapshot() async -> SavingsSourcesPieChartSnapshot
}
