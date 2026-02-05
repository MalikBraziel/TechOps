//
//  CaloriesBreakdownService.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:05:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactor Agent
//
//  Last_Updated: February 01, 2026 @ 11:12:28 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactor Agent
//
//  PURPOSE:
//  - Fixture-backed service for calories breakdown data
//  - Provides a snapshot for previews and local development
//
//  DATA FLOW:
//  1a) ViewModel ───async request──▶ CaloriesBreakdownService.fetchSnapshot()
//  1b) Service  ─────snapshot────▶ ViewModel
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ CaloriesBreakdownViewModel   │────▶│ CaloriesBreakdownService      │
//  │ (consumer)                   │     │ (service)                    │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - Architecture.md
//  - Concurrency.md
//
// =============================================================================
//

import Foundation

struct CaloriesBreakdownService: CaloriesBreakdownServiceProtocol {
    func fetchSnapshot() async -> CaloriesBreakdownSnapshot {
        CaloriesBreakdownFixtures.snapshot
    }
}
