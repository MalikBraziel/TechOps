//
//  WorkoutZoningBarServiceProtocol.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:56:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:47:16 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Defines the service boundary for workout zoning bar data
//  - Supports async entry retrieval for the Stats feature
//
//  DATA FLOW:
//  1a) ViewModel ───async request──▶ WorkoutZoningBarServiceProtocol.fetchEntries()
//  1b) Service  ─────entries──────▶ ViewModel
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌────────────────────────────────┐
//  │ WorkoutZoningBarViewModel    │────▶│ WorkoutZoningBarServiceProtocol │
//  │ (consumer)                   │     │ (protocol)                     │
//  └──────────────────────────────┘     └────────────────────────────────┘
//
//  REFERENCES:
//  - Architecture.md
//  - Concurrency.md
//
// =============================================================================
//

import Foundation

// MARK: - Service Protocol

/// Provides workout zoning bar entries for the Stats feature.
///
/// Data Flow: ViewModel → fetchEntries() → ViewModel.state
protocol WorkoutZoningBarServiceProtocol: Sendable {
    /// Fetches the entries displayed by the workout zoning bar list.
    func fetchEntries() async -> [WorkoutZoningBarEntry]
}
