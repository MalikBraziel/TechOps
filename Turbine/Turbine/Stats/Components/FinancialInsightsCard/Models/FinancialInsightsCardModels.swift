//
//  FinancialInsightsCardModels.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:32:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:39:10 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Domain models for the Financial Insights Card component
//  - Defines card content, insight types, and recommendations
//
//  DATA FLOW:
//  1a) Service ─────card────▶ FinancialInsightsCardState
//  1b) State ─────props────▶ FinancialInsightsCardView
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────────┐
//  │ FinancialInsightsCardService │────▶│ FinancialInsightsCardData         │
//  │ (service)                    │     │ (value type)                      │
//  └──────────────────────────────┘     └──────────────────────────────────┘
//
//  REFERENCES:
//  - Architecture.md
//  - DesignSystem.md
//
// =============================================================================
//

import SwiftUI

// MARK: - Card Model

/// Domain model representing the financial insights card content.
struct FinancialInsightsCardData: Sendable {
    let headlineIconName: String
    let headline: String
    let type: FinancialInsightsCardType
    let score: Int
    let insightText: String
    let recommendations: [FinancialInsightsRecommendation]

    init(
        headlineIconName: String,
        headline: String,
        type: FinancialInsightsCardType,
        score: Int,
        insightText: String,
        recommendations: [FinancialInsightsRecommendation]
    ) {
        self.headlineIconName = headlineIconName
        self.headline = headline
        self.type = type
        self.score = score
        self.insightText = insightText
        self.recommendations = recommendations
    }

    /// Normalized progress value for the score ring (0...1).
    var progress: Double {
        let normalized = Double(score) / 10.0
        return min(max(normalized, 0), 1)
    }
}

// MARK: - Insight Type

/// Category describing the current financial wellness level.
enum FinancialInsightsCardType: Sendable {
    case low
    case moderate
    case high

    /// Display title for the insight type.
    var title: String {
        switch self {
        case .low:
            return "Low risk"
        case .moderate:
            return "Needs work"
        case .high:
            return "High risk"
        }
    }

    /// Accent color associated with the insight type.
    var accentColor: Color {
        switch self {
        case .low:
            return .green
        case .moderate:
            return .yellow
        case .high:
            return .red
        }
    }
}

// MARK: - Recommendation Priority

/// Priority label describing the urgency of a recommendation.
enum FinancialInsightsRecommendationPriority: Sendable {
    case low
    case medium
    case high

    /// Display title for the priority label.
    var title: String {
        switch self {
        case .low:
            return "Low priority"
        case .medium:
            return "Medium priority"
        case .high:
            return "High priority"
        }
    }

    /// System icon name for the priority label.
    var iconName: String {
        switch self {
        case .low:
            return "gauge.with.dots.needle.33percent"
        case .medium:
            return "gauge.with.dots.needle.50percent"
        case .high:
            return "gauge.with.dots.needle.67percent"
        }
    }
}

// MARK: - Recommendation Model

/// Represents a single recommendation shown in the carousel.
struct FinancialInsightsRecommendation: Identifiable, Sendable {
    let id: UUID
    let priority: FinancialInsightsRecommendationPriority
    let title: String
    let text: String

    init(
        id: UUID = UUID(),
        priority: FinancialInsightsRecommendationPriority,
        title: String,
        text: String
    ) {
        self.id = id
        self.priority = priority
        self.title = title
        self.text = text
    }
}
