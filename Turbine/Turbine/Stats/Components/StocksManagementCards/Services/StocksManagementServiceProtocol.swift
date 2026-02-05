//
//  StocksManagementServiceProtocol.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:58:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:47:16 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Defines the service boundary for stocks management data
//  - Supports async snapshot retrieval for the Stats feature
//
//  DATA FLOW:
//  1a) ViewModel ───async request──▶ StocksManagementServiceProtocol.fetchSnapshot()
//  1b) Service  ─────snapshot────▶ ViewModel
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ StocksManagementViewModel    │────▶│ StocksManagementServiceProto  │
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

// MARK: - Service Protocol

/// Provides stocks management data for the stats feature.
protocol StocksManagementServiceProtocol: Sendable {
    /// Fetches the snapshot displayed by the stocks management cards.
    func fetchSnapshot() async -> StocksManagementSnapshot
}
