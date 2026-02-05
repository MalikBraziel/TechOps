//
//  MetricValueAtom.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:05:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactor Agent
//
//  Last_Updated: February 01, 2026 @ 11:17:33 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactor Agent
//
//  PURPOSE:
//  - Atom for displaying a numeric value with unit
//  - Used by calories breakdown metrics
//
//  DATA FLOW:
//  1a) Parent View ─────props────▶ MetricValueAtom
//  1b) MetricValueAtom ───render──▶ Text(value, unit)
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ Parent View                  │────▶│ MetricValueAtom               │
//  │ (molecule/compound)          │     │ (atom)                        │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - DesignSystem.md
//  - Architecture.md
//
// =============================================================================
//

import SwiftUI

// MARK: - Metric Value Atom

struct MetricValueAtom: View {
    let value: String
    let unit: String

    var body: some View {
        HStack(alignment: .lastTextBaseline, spacing: 4) {
            Text(value)
                .font(.system(size: 20, weight: .medium))
            if !unit.isEmpty {
                Text(unit)
                    .font(.system(size: 13, weight: .regular))
                    .foregroundStyle(.secondary)
            }
        }
    }
}
