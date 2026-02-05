//
//  TabRootPage.swift
//  Turbine
//
//  Created: February 04, 2026 @ 10:03:00 PM EST
//  Created_By: GPT 5.2 Medium Reasoning - Windsurf IDE - Implementation Agent
//
//  Last_Updated: February 04, 2026 @ 10:19:28 PM EST
//  Last_Updated_By: GPT 5.2 Medium Reasoning - Windsurf IDE - Implementation Agent
//
//  PURPOSE:
//  - iPhone primary navigation scaffold with tabs for Stats, Chat, Settings
//  - Each tab owns its own NavigationStack
//  - Placeholder shells until feature pages land in later phases
//
//  DATA FLOW:
//  1a) RootContainer -> TabRootPage
//  1b) TabRootPage -> TabPlaceholderView
//
//  OBJECTS:
//  RootContainer -> TabRootPage -> TabPlaceholderView
//
//  REFERENCES:
//  - SKILL.md
//
// =============================================================================
//

import SwiftUI

struct TabRootPage: View {
    private enum Tab: String, CaseIterable, Hashable {
        case stats
        case chat
        case settings

        var title: String {
            rawValue.capitalized
        }

        var systemImage: String {
            switch self {
            case .stats:
                return "chart.bar.xaxis"
            case .chat:
                return "bubble.left.and.bubble.right"
            case .settings:
                return "gearshape"
            }
        }

        var subtitle: String {
            switch self {
            case .stats:
                return "Stats home lands in Phase 1.4"
            case .chat:
                return "Chat surface arrives in a later phase"
            case .settings:
                return "Settings shell is Phase 1.5"
            }
        }
    }

    var body: some View {
        TabView {
            tabShell(for: .stats)
            tabShell(for: .chat)
            tabShell(for: .settings)
        }
    }

    @ViewBuilder
    private func tabShell(for tab: Tab) -> some View {
        NavigationStack {
            TabPlaceholderView(title: tab.title, subtitle: tab.subtitle)
                .navigationTitle(tab.title)
        }
        .tabItem {
            Label(tab.title, systemImage: tab.systemImage)
        }
        .tag(tab)
    }
}

private struct TabPlaceholderView: View {
    let title: String
    let subtitle: String

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(title)
                .font(.largeTitle.weight(.semibold))

            Text(subtitle)
                .font(.subheadline)
                .foregroundStyle(.secondary)

            Divider()

            Text("Phase 1.2 tab scaffold active")
                .font(.footnote.weight(.medium))
                .foregroundStyle(.secondary)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .padding(24)
        .background(Color(.systemBackground))
    }
}

#Preview("TabRootPage") {
    TabRootPage()
}
