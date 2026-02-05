//
//  ShowPreviewCardColorService.swift
//  Turbine
//
//  Created: February 02, 2026 @ 12:45:00 AM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 02, 2026 @ 01:10:22 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Default service for computing dominant image colors
//  - Uses Core Image area average sampling for parity with SwiftUX
//
//  DATA FLOW:
//  1a) ViewModel ───async request──▶ ShowPreviewCardColorService.dominantColor
//  1b) Service  ─────color───────▶ ViewModel
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ ShowPreviewCardViewModel     │────▶│ ShowPreviewCardColorService   │
//  │ (consumer)                   │     │ (service)                    │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - Architecture.md
//  - SwiftUXRefactoring.md
//
// =============================================================================
//

import SwiftUI
import UIKit

// MARK: - Color Service

/// Default dominant color service implementation.
struct ShowPreviewCardColorService: ShowPreviewCardColorServiceProtocol {
    func dominantColor(for imageName: String) async -> Color {
        guard let image = UIImage.showPreviewCardImage(named: imageName) else {
            return .black
        }
        return image.primaryColor ?? .black
    }
}

// MARK: - UIImage Helpers

extension UIImage {
    static func showPreviewCardImage(named name: String) -> UIImage? {
        if let image = UIImage(named: name) {
            return image
        }
        let extensions = ["png", "jpg", "jpeg"]
        for fileExtension in extensions {
            if let url = Bundle.main.url(forResource: name, withExtension: fileExtension, subdirectory: "Images"),
               let image = UIImage(contentsOfFile: url.path) {
                return image
            }
        }
        return nil
    }

    var primaryColor: Color? {
        guard let imageData = cgImage else { return nil }

        let width = imageData.width
        let height = imageData.height
        let rect = CGRect(x: 0, y: 0, width: width, height: height)

        let inputImage = CIImage(cgImage: imageData)
        let extentVector = CIVector(
            x: rect.origin.x,
            y: rect.origin.y,
            z: rect.size.width,
            w: rect.size.height
        )

        guard let filter = CIFilter(
            name: "CIAreaAverage",
            parameters: [
                kCIInputImageKey: inputImage,
                kCIInputExtentKey: extentVector
            ]
        ) else { return nil }
        guard let outputImage = filter.outputImage else { return nil }

        var bitmap = [UInt8](repeating: 0, count: 4)
        let context = CIContext(options: [.workingColorSpace: kCFNull as Any])

        context.render(
            outputImage,
            toBitmap: &bitmap,
            rowBytes: 4,
            bounds: CGRect(x: 0, y: 0, width: 1, height: 1),
            format: .RGBA8,
            colorSpace: nil
        )

        return Color(
            red: CGFloat(bitmap[0]) / 255,
            green: CGFloat(bitmap[1]) / 255,
            blue: CGFloat(bitmap[2]) / 255
        )
    }
}
