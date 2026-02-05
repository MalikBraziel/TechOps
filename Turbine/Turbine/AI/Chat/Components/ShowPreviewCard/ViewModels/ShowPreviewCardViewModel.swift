//
//  ShowPreviewCardViewModel.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:45:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 02, 2026 @ 12:45:00 AM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Compound-level ViewModel for ShowPreviewCard
//  - Bridges state machine to SwiftUI compounds
//  - Thread-safe via @MainActor and @Observable
//
//  DATA FLOW:
//  1a) Compound ─────async event────▶ ViewModel.send(event)
//  1b) ViewModel ────command───────▶ Service.dominantColor(for:)
//  1c) Service  ─────event────────▶ ViewModel.state
//  1d) ViewModel ─────bind────────▶ Compound
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ ShowPreviewCardCompound      │────▶│ ShowPreviewCardViewModel      │
//  │ (compound)                   │     │ (@Observable)                │
//  └──────────────────────────────┘     └──────────────────────────────┘
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ ShowPreviewCardColorService  │◀────│ ShowPreviewCardViewModel      │
//  │ (service)                    │     │ (consumer)                   │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - StateMachine.md
//  - Concurrency.md
//  - Architecture.md
//
// =============================================================================
//

import Observation
import SwiftUI

// MARK: - ViewModel

/// ViewModel binding ShowPreviewCard state to SwiftUI compounds.
@Observable
@MainActor
final class ShowPreviewCardViewModel {
    var state: ShowPreviewCardState
    private let colorService: ShowPreviewCardColorServiceProtocol

    init(state: ShowPreviewCardState, colorService: ShowPreviewCardColorServiceProtocol) {
        self.state = state
        self.colorService = colorService
    }

    // MARK: - Data Flow

    /// Sends UI events into the reducer and handles resulting commands.
    func send(_ event: ShowPreviewCardEvent) {
        let commands = ShowPreviewCardReducer.reduce(state: &state, event: event)
        for command in commands {
            handle(command)
        }
    }

    private func handle(_ command: ShowPreviewCardCommand) {
        switch command {
        case .loadDominantColor:
            Task { await loadDominantColor() }
        }
    }

    private func loadDominantColor() async {
        let color = await colorService.dominantColor(for: state.data.imageName)
        send(.dominantColorLoaded(color))
    }
}
