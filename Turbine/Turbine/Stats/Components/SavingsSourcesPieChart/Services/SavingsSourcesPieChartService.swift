//
//  SavingsSourcesPieChartService.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:50:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:39:15 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Fixture-backed service for savings sources pie chart data
//  - Provides deterministic snapshots for previews and local development
//
//  DATA FLOW:
//  1a) ViewModel ───async request──▶ SavingsSourcesPieChartService.fetchSnapshot()
//  1b) Service  ─────snapshot────▶ ViewModel
//
//  OBJECTS:
//  ┌────────────────────────────────────┐     ┌────────────────────────────────────┐
//  │ SavingsSourcesPieChartViewModel    │────▶│ SavingsSourcesPieChartService      │
//  │ (consumer)                          │     │ (service)                          │
//  └────────────────────────────────────┘     └────────────────────────────────────┘
//
//  REFERENCES:
//  - Architecture.md
//  - Concurrency.md
//
// =============================================================================
//

import Foundation

// MARK: - Fixture Service

/// Default service implementation for the savings sources pie chart component.
struct SavingsSourcesPieChartService: SavingsSourcesPieChartServiceProtocol {
    func fetchSnapshot() async -> SavingsSourcesPieChartSnapshot {
        SavingsSourcesPieChartFixtures.snapshot
    }
}
