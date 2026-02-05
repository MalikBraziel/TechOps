//
//  PortfolioDigestCardEffect.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:15:30 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:47:16 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Effect boundary for PortfolioDigestCard
//
//  DATA FLOW:
//  1a) Reducer ─────command────▶ ViewModel.handle(command)
//  1b) ViewModel ─────effect────▶ Service.fetchSnapshot()
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ PortfolioDigestCardCommand   │────▶│ PortfolioDigestCardEffect     │
//  │ (value type)                 │     │ (effect boundary)            │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - StateMachine.md
//
// =============================================================================
//

import Foundation

// MARK: - Effect

/// Effect types triggered by portfolio digest card commands.
enum PortfolioDigestCardEffect: Sendable {
    case loadSnapshot
}
