//
//  ShowPreviewCardColorServiceProtocol.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:45:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 02, 2026 @ 12:45:00 AM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Defines the service boundary for extracting dominant colors
//  - Supports ShowPreviewCard background gradient rendering
//
//  DATA FLOW:
//  1a) ViewModel ───async request──▶ ShowPreviewCardColorServiceProtocol.dominantColor
//  1b) Service  ─────color───────▶ ViewModel
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌────────────────────────────────────────┐
//  │ ShowPreviewCardViewModel     │────▶│ ShowPreviewCardColorServiceProtocol     │
//  │ (consumer)                   │     │ (protocol)                              │
//  └──────────────────────────────┘     └────────────────────────────────────────┘
//
//  REFERENCES:
//  - Architecture.md
//  - SwiftUXRefactoring.md
//
// =============================================================================
//

import SwiftUI

// MARK: - Service Protocol

/// Provides dominant color extraction for preview card images.
protocol ShowPreviewCardColorServiceProtocol: Sendable {
    /// Computes a dominant color for the named image asset.
    func dominantColor(for imageName: String) async -> Color
}
