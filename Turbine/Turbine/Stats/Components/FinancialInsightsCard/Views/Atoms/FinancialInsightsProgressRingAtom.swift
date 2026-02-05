//
//  FinancialInsightsProgressRingAtom.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:32:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:46:58 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Atom for rendering the circular progress ring and score
//  - Matches the Financial Insights Card progress indicator
//
//  DATA FLOW:
//  1a) Parent View ─────props────▶ FinancialInsightsProgressRingAtom
//  1b) Atom ─────render───────▶ ZStack(Circle, score)
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────────┐
//  │ Parent View                  │────▶│ FinancialInsightsProgressRingAtom│
//  │ (molecule/compound)          │     │ (atom)                            │
//  └──────────────────────────────┘     └──────────────────────────────────┘
//
//  REFERENCES:
//  - DesignSystem.md
//  - Architecture.md
//
// =============================================================================
//

import SwiftUI

// MARK: - Progress Ring Atom

/// Circular progress ring with the current score.
struct FinancialInsightsProgressRingAtom: View {
    let score: Int
    let maxScore: Int
    let color: Color

    init(score: Int, maxScore: Int = 10, color: Color) {
        self.score = score
        self.maxScore = maxScore
        self.color = color
    }

    private var progress: Double {
        guard maxScore > 0 else { return 0 }
        let normalized = Double(score) / Double(maxScore)
        return min(max(normalized, 0), 1)
    }

    // MARK: - UI Composition

    var body: some View {
        ZStack {
            Circle()
                .stroke(.gray.opacity(0.17), lineWidth: 6)

            Circle()
                .trim(from: 0, to: progress)
                .stroke(
                    color,
                    style: StrokeStyle(
                        lineWidth: 6,
                        lineCap: .round
                    )
                )
                .rotationEffect(.degrees(-90))

            HStack(alignment: .lastTextBaseline, spacing: 0) {
                Text("\(score)")
                    .font(.system(.title3))
                Text("/\(maxScore)")
                    .font(.system(.headline))
                    .foregroundStyle(.secondary)
            }
            .fontWeight(.semibold)
        }
        .frame(width: 100, height: 100)
    }
}

#Preview {
    FinancialInsightsProgressRingAtom(score: 6, color: .yellow)
        .padding()
}
