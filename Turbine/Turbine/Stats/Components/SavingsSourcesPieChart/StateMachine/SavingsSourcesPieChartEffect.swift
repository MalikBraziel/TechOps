//
//  SavingsSourcesPieChartEffect.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:58:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:40:16 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Effect boundary for SavingsSourcesPieChart
//
//  DATA FLOW:
//  1a) Reducer ─────command────▶ ViewModel.handle(command)
//  1b) ViewModel ─────effect────▶ Service.fetchSnapshot()
//
//  OBJECTS:
//  ┌────────────────────────────────────┐     ┌────────────────────────────────────┐
//  │ SavingsSourcesPieChartCommand      │────▶│ SavingsSourcesPieChartEffect        │
//  │ (value type)                       │     │ (effect boundary)                   │
//  └────────────────────────────────────┘     └────────────────────────────────────┘
//
//  REFERENCES:
//  - StateMachine.md
//  - Architecture.md
//
// =============================================================================
//

import Foundation

// MARK: - Effect

/// Effects triggered by the Savings Sources pie chart state machine.
enum SavingsSourcesPieChartEffect: Sendable {
    case loadSnapshot
}
