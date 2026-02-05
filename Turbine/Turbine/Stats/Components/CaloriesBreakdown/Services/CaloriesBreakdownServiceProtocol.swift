//
//  CaloriesBreakdownServiceProtocol.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:05:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactor Agent
//
//  Last_Updated: February 01, 2026 @ 11:11:12 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactor Agent
//
//  PURPOSE:
//  - Defines the service boundary for calories breakdown data
//  - Supports async snapshot retrieval for the Stats feature
//
//  DATA FLOW:
//  1a) ViewModel ───async request──▶ CaloriesBreakdownServiceProtocol.fetchSnapshot()
//  1b) Service  ─────snapshot────▶ ViewModel
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ CaloriesBreakdownViewModel   │────▶│ CaloriesBreakdownService      │
//  │ (consumer)                   │     │ (protocol)                   │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - Architecture.md
//  - Concurrency.md
//
// =============================================================================
//

import Foundation

/// Provides calories breakdown data for the stats feature.
protocol CaloriesBreakdownServiceProtocol: Sendable {
    func fetchSnapshot() async -> CaloriesBreakdownSnapshot
}
