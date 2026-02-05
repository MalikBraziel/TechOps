//
//  GroupEventCardService.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:40:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:33:54 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Fixture-backed service for group event card data
//  - Provides deterministic events for previews and local development
//
//  DATA FLOW:
//  1a) ViewModel ───async request──▶ GroupEventCardService.fetchEvent()
//  1b) Service  ─────event───────▶ ViewModel
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ GroupEventCardViewModel      │────▶│ GroupEventCardService         │
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

/// Default service implementation for group event card data.
struct GroupEventCardService: GroupEventCardServiceProtocol {
    func fetchEvent() async -> GroupEventCardEventData {
        GroupEventCardFixtures.sampleEvent
    }
}
