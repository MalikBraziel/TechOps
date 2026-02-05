//
//  CaloriesBreakdownEffect.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:05:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactor Agent
//
//  Last_Updated: February 01, 2026 @ 11:15:59 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactor Agent
//
//  PURPOSE:
//  - Effect boundary for CaloriesBreakdown
//
//  DATA FLOW:
//  1a) Reducer ─────command────▶ ViewModel.handle(command)
//  1b) ViewModel ─────effect────▶ Service.fetchSnapshot()
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ CaloriesBreakdownCommand     │────▶│ CaloriesBreakdownEffect       │
//  │ (value type)                 │     │ (effect boundary)            │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - StateMachine.md
//  - Architecture.md
//
// =============================================================================
//

import Foundation

enum CaloriesBreakdownEffect: Sendable {
    case loadSnapshot
}
