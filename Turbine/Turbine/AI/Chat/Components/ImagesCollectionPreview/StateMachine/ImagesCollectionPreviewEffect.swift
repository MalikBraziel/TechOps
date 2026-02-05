//
//  ImagesCollectionPreviewEffect.swift
//  Turbine
//
//  Created: February 02, 2026 @ 01:05:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 02, 2026 @ 01:05:00 AM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Effect boundary for ImagesCollectionPreview side effects
//
//  DATA FLOW:
//  1a) Reducer ─────command────▶ ViewModel.handle(command)
//  1b) ViewModel ─────effect────▶ Service.fetchPreviewCardData()
//
//  OBJECTS:
//  ┌────────────────────────────────────┐     ┌────────────────────────────────────┐
//  │ ImagesCollectionPreviewCommand     │────▶│ ImagesCollectionPreviewEffect      │
//  │ (value type)                        │     │ (effect boundary)                   │
//  └────────────────────────────────────┘     └────────────────────────────────────┘
//
//  REFERENCES:
//  - StateMachine.md
//
// =============================================================================
//

import Foundation

// MARK: - Effect

/// Effect types triggered by images collection preview commands.
enum ImagesCollectionPreviewEffect: Sendable {
    case loadPreviewData
}
