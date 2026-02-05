//
//  CaloriesBreakdownBarChartMolecule.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:06:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactor Agent
//
//  Last_Updated: February 01, 2026 @ 11:21:30 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactor Agent
//
//  PURPOSE:
//  - Molecule rendering the hourly calories breakdown bar chart
//  - Displays summary metrics and a bar chart with axes
//
//  DATA FLOW:
//  1a) Parent View ─────summary────▶ CaloriesBreakdownBarChartMolecule
//  1b) Molecule ─────compose────▶ Metrics + Chart
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ Parent View                  │────▶│ CaloriesBreakdownBarChart     │
//  │ (compound)                   │     │ (molecule)                    │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - DesignSystem.md
//  - Architecture.md
//
// =============================================================================
//

import Charts
import SwiftUI

// MARK: - Breakdown Bar Chart Molecule

struct CaloriesBreakdownBarChartMolecule: View {
    let summary: CaloriesBreakdownSummary
    var chartHeight: CGFloat = 200

    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            HStack(spacing: 32) {
                CaloriesTrendMolecule(percentageChange: summary.percentageChange)
                CaloriesMetricMolecule(value: Int(summary.totalCalories), metric: "kcal", title: "Total burned")
                CaloriesMetricMolecule(value: Int(summary.averageCalories), metric: "kcal", title: "Average")
            }

            Chart {
                ForEach(summary.entries) { item in
                    BarMark(
                        x: .value("Time", item.date, unit: .hour),
                        y: .value("Calories", item.amount)
                    )
                    .foregroundStyle(item.amount > 500 ? Color.green : Color.gray.opacity(0.6))
                    .cornerRadius(1)
                }
            }
            .chartXAxis {
                AxisMarks(position: .bottom, values: .stride(by: .hour)) { value in
                    AxisValueLabel(centered: true, anchor: .top, multiLabelAlignment: .center) {
                        VStack(alignment: .center, spacing: 4) {
                            Circle()
                                .fill(Color.gray)
                                .frame(width: 4, height: 4)
                            if let hour = value.as(Date.self)?.hour {
                                Text(hour % 2 == 0 ? (hour > 12 ? "\(hour - 12)PM" : "\(hour)AM") : "")
                                    .font(.system(size: 10))
                                    .frame(height: 10)
                            }
                        }
                    }
                }
            }
            .chartYAxis {
                AxisMarks(position: .leading) { value in
                    AxisGridLine(stroke: .init(dash: [2, 4]))
                    AxisValueLabel {
                        Text(value.as(Double.self) ?? 0, format: .number.precision(.fractionLength(0)))
                            .font(.system(size: 12))
                    }
                }
            }
            .frame(height: chartHeight)
        }
    }
}

private extension Date {
    var hour: Int {
        Calendar.current.component(.hour, from: self)
    }
}
