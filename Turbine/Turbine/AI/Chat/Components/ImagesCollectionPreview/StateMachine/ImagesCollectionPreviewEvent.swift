//
//  ImagesCollectionPreviewEvent.swift
//  Turbine
//
//  Created: February 02, 2026 @ 01:05:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 02, 2026 @ 01:05:00 AM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Declares events for the ImagesCollectionPreview state machine
//
//  DATA FLOW:
//  1a) View ─────event────▶ ViewModel.send(event)
//  1b) ViewModel ─────event────▶ Reducer.reduce
//
//  OBJECTS:
//  ┌────────────────────────────────────┐     ┌────────────────────────────────────┐
//  │ ImagesCollectionPreviewView        │────▶│ ImagesCollectionPreviewEvent       │
//  │ (view)                              │     │ (value type)                        │
//  └────────────────────────────────────┘     └────────────────────────────────────┘
//
//  REFERENCES:
//  - StateMachine.md
//
// =============================================================================
//

import Foundation

// MARK: - Event

/// Events that drive state transitions for the images collection preview card.
enum ImagesCollectionPreviewEvent: Sendable {
    case taskStarted
    case dataLoaded(ImagesCollectionPreviewCardData)
}
