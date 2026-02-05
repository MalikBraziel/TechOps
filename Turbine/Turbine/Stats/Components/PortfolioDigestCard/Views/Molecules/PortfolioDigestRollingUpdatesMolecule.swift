//
//  PortfolioDigestRollingUpdatesMolecule.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:25:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:55:28 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Molecule that renders the rolling digest updates text
//  - Cycles through update messages with animated transitions
//
//  DATA FLOW:
//  1a) Parent View ─────updates────▶ PortfolioDigestRollingUpdatesMolecule
//  1b) Molecule ─────render────▶ Text(message)
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ Parent View                  │────▶│ PortfolioDigestRollingUpdates│
//  │ (compound)                   │     │ (molecule)                    │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - DesignSystem.md
//  - Architecture.md
//
// =============================================================================
//

import SwiftUI
internal import Combine

// MARK: - Rolling Updates Molecule

/// Animated rolling text for portfolio digest updates.
struct PortfolioDigestRollingUpdatesMolecule: View {
    let updates: [PortfolioDigestUpdate]
    let displayDuration: Double
    let rollingDuration: Double

    @State private var currentIndex = 0

    private let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()

    private var currentMessage: String {
        guard !updates.isEmpty else { return "" }
        return updates[currentIndex % updates.count].message
    }

    // MARK: - UI Composition

    var body: some View {
        Text(currentMessage)
            .font(.system(.title3, weight: .medium))
            .foregroundStyle(.secondary)
            .contentTransition(.numericText())
            .animation(.bouncy(duration: rollingDuration), value: currentIndex)
            .onReceive(timer) { _ in
                guard !updates.isEmpty else { return }
                withAnimation {
                    currentIndex = (currentIndex + 1) % updates.count
                }
            }
    }
}

#Preview {
    PortfolioDigestRollingUpdatesMolecule(
        updates: PortfolioDigestCardFixtures.updates,
        displayDuration: 0.3,
        rollingDuration: 0.7
    )
    .padding()
}
