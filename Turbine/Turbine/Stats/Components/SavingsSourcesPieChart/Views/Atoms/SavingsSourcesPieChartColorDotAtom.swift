//
//  SavingsSourcesPieChartColorDotAtom.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:59:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:47:16 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Atom for rendering the small color indicator dot
//  - Used by savings source rows in the pie chart component
//
//  DATA FLOW:
//  1a) Parent View ─────props────▶ SavingsSourcesPieChartColorDotAtom
//  1b) Atom ─────render───────▶ Circle
//
//  OBJECTS:
//  ┌────────────────────────────────────┐     ┌────────────────────────────────────┐
//  │ Parent View                        │────▶│ SavingsSourcesPieChartColorDotAtom │
//  │ (molecule)                         │     │ (atom)                             │
//  └────────────────────────────────────┘     └────────────────────────────────────┘
//
//  REFERENCES:
//  - DesignSystem.md
//  - Architecture.md
//
// =============================================================================
//

import SwiftUI

// MARK: - Color Dot Atom

/// Displays a small circular color marker for a savings source entry.
struct SavingsSourcesPieChartColorDotAtom: View {
    let color: Color
    let size: CGFloat

    init(color: Color, size: CGFloat = 12) {
        self.color = color
        self.size = size
    }

    var body: some View {
        Circle()
            .fill(color)
            .frame(width: size, height: size)
    }
}
