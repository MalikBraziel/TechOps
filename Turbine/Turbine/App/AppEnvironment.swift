//
//  AppEnvironment.swift
//  Turbine
//
//  Created: February 04, 2026 @ 09:28:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - Implementation Agent
//
//  Last_Updated: February 04, 2026 @ 09:28:00 PM EST
//  Last_Updated_By: GPT 5.2 Medium Reasoning - Windsurf IDE
//
//  PURPOSE:
//  - App-wide environment container for device/build metadata
//  - Provides a consistent, non-ad hoc source of device + OS + screen data
//
// =============================================================================
//

import Foundation
import SwiftUI

struct AppEnvironment: Sendable, Equatable {
    let deviceProfile: DeviceProfile
    let buildInfo: BuildInfo

    static func current() -> AppEnvironment {
        AppEnvironment(
            deviceProfile: DeviceProfile.current(),
            buildInfo: BuildInfo.current()
        )
    }
}

struct BuildInfo: Sendable, Equatable {
    let bundleIdentifier: String
    let displayName: String
    let version: String
    let build: String

    static func current(bundle: Bundle = .main) -> BuildInfo {
        let info = bundle.infoDictionary
        let bundleIdentifier = bundle.bundleIdentifier ?? "unknown.bundle"
        let displayName = (info?["CFBundleDisplayName"] as? String)
            ?? (info?["CFBundleName"] as? String)
            ?? "Turbine"
        let version = info?["CFBundleShortVersionString"] as? String ?? "0.0.0"
        let build = info?["CFBundleVersion"] as? String ?? "0"

        return BuildInfo(
            bundleIdentifier: bundleIdentifier,
            displayName: displayName,
            version: version,
            build: build
        )
    }
}

private struct AppEnvironmentKey: EnvironmentKey {
    static let defaultValue = AppEnvironment.current()
}

extension EnvironmentValues {
    var appEnvironment: AppEnvironment {
        get { self[AppEnvironmentKey.self] }
        set { self[AppEnvironmentKey.self] = newValue }
    }
}
