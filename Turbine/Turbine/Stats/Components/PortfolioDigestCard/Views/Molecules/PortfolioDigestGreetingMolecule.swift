//
//  PortfolioDigestGreetingMolecule.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:28:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:55:28 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Molecule rendering the greeting and rolling updates
//  - Stacks greeting text with the animated update ticker
//
//  DATA FLOW:
//  1a) Parent View ─────summary────▶ PortfolioDigestGreetingMolecule
//  1b) Molecule ─────compose────▶ Greeting + Rolling Updates
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ Parent View                  │────▶│ PortfolioDigestGreetingMol   │
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

// MARK: - Greeting Molecule

/// Greeting and rolling updates stack for the portfolio digest card.
struct PortfolioDigestGreetingMolecule: View {
    let greeting: String
    let userName: String
    let updates: [PortfolioDigestUpdate]

    // MARK: - UI Composition

    var body: some View {
        VStack(alignment: .leading, spacing: 2) {
            Text("\(greeting), \(userName)")
                .font(.system(.title2, weight: .semibold))
                .foregroundStyle(.primary)

            PortfolioDigestRollingUpdatesMolecule(
                updates: updates,
                displayDuration: 0.3,
                rollingDuration: 0.7
            )
        }
    }
}

#Preview {
    PortfolioDigestGreetingMolecule(
        greeting: "Good morning",
        userName: "Michael",
        updates: PortfolioDigestCardFixtures.updates
    )
    .padding()
}
