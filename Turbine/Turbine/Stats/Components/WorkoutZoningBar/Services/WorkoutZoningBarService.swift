//
//  WorkoutZoningBarService.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:56:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:47:16 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Fixture-backed service for workout zoning bar data
//  - Provides deterministic entries for previews and local development
//
//  DATA FLOW:
//  1a) ViewModel ───async request──▶ WorkoutZoningBarService.fetchEntries()
//  1b) Service  ─────entries──────▶ ViewModel
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ WorkoutZoningBarViewModel    │────▶│ WorkoutZoningBarService       │
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

// MARK: - Fixture Service

/// Default service implementation for workout zoning bar data.
struct WorkoutZoningBarService: WorkoutZoningBarServiceProtocol {
    /// Returns fixture entries for previews and local development.
    func fetchEntries() async -> [WorkoutZoningBarEntry] {
        WorkoutZoningBarFixtures.entries
    }
}
