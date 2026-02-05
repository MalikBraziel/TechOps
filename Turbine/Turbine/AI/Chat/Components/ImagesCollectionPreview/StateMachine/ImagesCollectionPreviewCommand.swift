//
//  ImagesCollectionPreviewCommand.swift
//  Turbine
//
//  Created: February 02, 2026 @ 01:05:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 02, 2026 @ 01:05:00 AM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Commands emitted by the ImagesCollectionPreview reducer
//
//  DATA FLOW:
//  1a) Reducer ─────command────▶ ViewModel.handle(command)
//  1b) ViewModel ───service────▶ Service.fetchPreviewCardData()
//
//  OBJECTS:
//  ┌────────────────────────────────────┐     ┌────────────────────────────────────┐
//  │ ImagesCollectionPreviewReducer     │────▶│ ImagesCollectionPreviewCommand     │
//  │ (pure reducer)                     │     │ (value type)                        │
//  └────────────────────────────────────┘     └────────────────────────────────────┘
//
//  REFERENCES:
//  - StateMachine.md
//
// =============================================================================
//

import Foundation

// MARK: - Command

/// Commands emitted by the images collection preview reducer.
enum ImagesCollectionPreviewCommand: Sendable {
    case loadPreviewData
}
