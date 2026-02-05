//
//  DeviceProfile.swift
//  Turbine
//
//  Created: February 04, 2026 @ 09:20:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - Implementation Agent
//
//  Last_Updated: February 04, 2026 @ 09:23:04 PM EST
//  Last_Updated_By: GPT 5.2 Medium Reasoning - Windsurf IDE
//
//  PURPOSE:
//  - Centralized device + OS + screen metadata for app scaffolding
//  - Avoid ad hoc checks by collecting consistent, reusable properties
//
//  DATA FLOW:
//  1a) UIDevice + ProcessInfo + UIScreen -> DeviceProfile
//  1b) RootContainer -> AppEnvironment -> DeviceProfile
//
//  OBJECTS:
//  AppEnvironment -> DeviceProfile -> RootContainer
//
//  REFERENCES:
//  - SKILL.md (Device/OS awareness guidance)
//
// =============================================================================
//

import Darwin
import Foundation
import UIKit

struct DeviceProfile: Sendable, Equatable {
    struct OSVersion: Sendable, Equatable {
        let major: Int
        let minor: Int
        let patch: Int
        let string: String
    }

    struct ScreenMetrics: Sendable, Equatable {
        let bounds: CGRect
        let nativeBounds: CGRect
        let scale: CGFloat
        let nativeScale: CGFloat
        let size: CGSize
        let pixelSize: CGSize
        let minDimension: CGFloat
        let maxDimension: CGFloat
    }

    struct DeviceModel: Sendable, Equatable {
        let identifier: String
        let name: String
        let localizedModel: String
        let systemName: String
        let systemVersion: String
    }

    enum Idiom: String, Sendable, CaseIterable {
        case iPhone
        case iPad
        case mac
        case tv
        case carPlay
        case vision
        case unspecified
    }

    let idiom: Idiom
    let model: DeviceModel
    let os: OSVersion
    let screen: ScreenMetrics

    var isPhone: Bool { idiom == .iPhone }
    var isPad: Bool { idiom == .iPad }
    var isVision: Bool { idiom == .vision }

    static func current() -> DeviceProfile {
        let device = UIDevice.current
        let processInfo = ProcessInfo.processInfo
        let osVersion = processInfo.operatingSystemVersion
        let screen = UIScreen.main

        let bounds = screen.bounds
        let nativeBounds = screen.nativeBounds
        let pixelSize = CGSize(width: nativeBounds.width, height: nativeBounds.height)

        return DeviceProfile(
            idiom: idiom(from: device.userInterfaceIdiom),
            model: DeviceModel(
                identifier: machineIdentifier(),
                name: device.name,
                localizedModel: device.localizedModel,
                systemName: device.systemName,
                systemVersion: device.systemVersion
            ),
            os: OSVersion(
                major: osVersion.majorVersion,
                minor: osVersion.minorVersion,
                patch: osVersion.patchVersion,
                string: processInfo.operatingSystemVersionString
            ),
            screen: ScreenMetrics(
                bounds: bounds,
                nativeBounds: nativeBounds,
                scale: screen.scale,
                nativeScale: screen.nativeScale,
                size: bounds.size,
                pixelSize: pixelSize,
                minDimension: min(bounds.size.width, bounds.size.height),
                maxDimension: max(bounds.size.width, bounds.size.height)
            )
        )
    }

    private static func idiom(from idiom: UIUserInterfaceIdiom) -> Idiom {
        switch idiom {
        case .phone:
            return .iPhone
        case .pad:
            return .iPad
        case .tv:
            return .tv
        case .carPlay:
            return .carPlay
        case .mac:
            return .mac
        case .vision:
            return .vision
        default:
            return .unspecified
        }
    }

    private static func machineIdentifier() -> String {
        var size: size_t = 0
        sysctlbyname("hw.machine", nil, &size, nil, 0)
        var machine = [CChar](repeating: 0, count: Int(size))
        sysctlbyname("hw.machine", &machine, &size, nil, 0)
        return String(cString: machine)
    }
}
