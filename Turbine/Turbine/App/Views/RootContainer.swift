//
//  RootContainer.swift
//  Turbine
//
//  Created: February 04, 2026 @ 09:42:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - Implementation Agent
//
//  Last_Updated: February 04, 2026 @ 09:42:00 PM EST
//  Last_Updated_By: GPT 5.2 Medium Reasoning - Windsurf IDE
//
//  PURPOSE:
//  - App composition root for Phase 1.1
//  - Decides between iPhone/iPad shells (expanded in later phases)
//  - Displays device profile summary for verification
//
//  DATA FLOW:
//  1a) AppEnvironment -> RootContainer
//  1b) RootContainer -> RootShellView
//
//  OBJECTS:
//  TurbineApp -> RootContainer -> RootShellView
//
//  REFERENCES:
//  - SKILL.md (navigation containers as composition roots)
//
// =============================================================================
//

import SwiftUI

struct RootContainer: View {
    @Environment(\.appEnvironment) private var appEnvironment

    private var rootMode: RootMode {
        RootMode(deviceProfile: appEnvironment.deviceProfile)
    }

    var body: some View {
        RootShellView(
            mode: rootMode,
            profile: appEnvironment.deviceProfile,
            buildInfo: appEnvironment.buildInfo
        )
    }
}

private enum RootMode: String, CaseIterable, Sendable {
    case iPhone
    case iPad
    case unknown

    init(deviceProfile: DeviceProfile) {
        if deviceProfile.isPad {
            self = .iPad
        } else if deviceProfile.isPhone {
            self = .iPhone
        } else {
            self = .unknown
        }
    }

    var title: String {
        switch self {
        case .iPhone:
            return "iPhone Shell"
        case .iPad:
            return "iPad Shell"
        case .unknown:
            return "Unknown Shell"
        }
    }

    var subtitle: String {
        switch self {
        case .iPhone:
            return "Tabs + independent stacks land in Phase 1.2"
        case .iPad:
            return "Custom split + side menu land in Phase 1.3"
        case .unknown:
            return "Fallback shell active"
        }
    }
}

private struct RootShellView: View {
    let mode: RootMode
    let profile: DeviceProfile
    let buildInfo: BuildInfo

    var body: some View {
        ZStack {
            LinearGradient(
                colors: [
                    Color.blue.opacity(0.45),
                    Color.indigo.opacity(0.55),
                    Color.black.opacity(0.7)
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()

            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    header
                    statusCard
                    infoCard
                    buildCard
                }
                .padding(.horizontal, 24)
                .padding(.vertical, 40)
            }
        }
    }

    private var header: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Turbine")
                .font(.system(size: 42, weight: .bold, design: .rounded))
                .foregroundStyle(.white)

            Text("App Shell Ready")
                .font(.title3.weight(.semibold))
                .foregroundStyle(.white.opacity(0.9))

            Text("Phase 1.1 scaffolding active")
                .font(.footnote.weight(.medium))
                .foregroundStyle(.white.opacity(0.7))
        }
    }

    private var statusCard: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(mode.title)
                .font(.title2.weight(.semibold))
                .foregroundStyle(.white)

            Text(mode.subtitle)
                .font(.subheadline)
                .foregroundStyle(.white.opacity(0.8))

            HStack(spacing: 12) {
                Capsule()
                    .fill(Color.green.opacity(0.9))
                    .frame(width: 12, height: 12)

                Text("Device profile loaded")
                    .font(.footnote.weight(.medium))
                    .foregroundStyle(.white.opacity(0.8))
            }
        }
        .padding(20)
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 20, style: .continuous))
    }

    private var infoCard: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Device Snapshot")
                .font(.headline.weight(.semibold))
                .foregroundStyle(.white)

            InfoRow(title: "Idiom", value: profile.idiom.rawValue)
            InfoRow(title: "Model", value: profile.model.identifier)
            InfoRow(title: "OS", value: "\(profile.model.systemName) \(profile.os.major).\(profile.os.minor).\(profile.os.patch)")
            InfoRow(title: "Screen", value: "\(Int(profile.screen.size.width))×\(Int(profile.screen.size.height)) pt")
            InfoRow(title: "Pixels", value: "\(Int(profile.screen.pixelSize.width))×\(Int(profile.screen.pixelSize.height)) px")
        }
        .padding(20)
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 20, style: .continuous))
    }

    private var buildCard: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Build")
                .font(.headline.weight(.semibold))
                .foregroundStyle(.white)

            InfoRow(title: "Bundle", value: buildInfo.bundleIdentifier)
            InfoRow(title: "Version", value: "\(buildInfo.displayName) \(buildInfo.version) (\(buildInfo.build))")
        }
        .padding(20)
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 20, style: .continuous))
    }
}

private struct InfoRow: View {
    let title: String
    let value: String

    var body: some View {
        HStack(alignment: .firstTextBaseline) {
            Text(title)
                .font(.footnote.weight(.medium))
                .foregroundStyle(.white.opacity(0.7))
                .frame(width: 72, alignment: .leading)

            Spacer(minLength: 12)

            Text(value)
                .font(.footnote.weight(.semibold))
                .foregroundStyle(.white)
                .multilineTextAlignment(.trailing)
        }
    }
}

#Preview("RootContainer") {
    RootContainer()
        .environment(\.appEnvironment, AppEnvironment.current())
}
