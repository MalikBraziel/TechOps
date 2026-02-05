//
//  ImagesCollectionPreviewModels.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:37:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 02, 2026 @ 01:18:20 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - Domain models for the ImagesCollectionPreview component
//  - Defines image sources and card metadata for preview rendering
//
//  DATA FLOW:
//  1a) Fixtures/Services ─────data────▶ ImagesCollectionPreviewCardData
//  1b) Models ───────────────props───▶ Views
//
//  OBJECTS:
//  ┌────────────────────────────────────────┐     ┌────────────────────────────────────────┐
//  │ ImagesCollectionPreviewFixtures        │────▶│ ImagesCollectionPreviewCardData        │
//  │ (fixture source)                       │     │ (value type)                            │
//  └────────────────────────────────────────┘     └────────────────────────────────────────┘
//
//  REFERENCES:
//  - Architecture.md
//  - DesignSystem.md
//
// =============================================================================
//

import SwiftUI
import UIKit

// MARK: - Image Source Model

/// Image source describing where preview thumbnails are loaded from.
enum ImagesCollectionPreviewImageSource: Sendable {
    case asset(name: String)
    case resource(name: String, fileExtension: String = "png", subdirectory: String = "Images")
    case system(name: String)

    /// Resolve the stored source into a SwiftUI image.
    var image: Image {
        switch self {
        case .asset(let name):
            return Image(name)
        case .resource(let name, let fileExtension, let subdirectory):
            if let image = resourceImage(
                name: name,
                fileExtension: fileExtension,
                subdirectory: subdirectory
            ) {
                return Image(uiImage: image).renderingMode(.original)
            }
            return Image(systemName: "photo")
        case .system(let name):
            return Image(systemName: name)
        }
    }

    private func resourceImage(name: String, fileExtension: String, subdirectory: String) -> UIImage? {
        let (baseName, resolvedExtension) = splitResourceName(name, defaultExtension: fileExtension)
        let bundle = Bundle.main

        if let url = bundle.url(forResource: baseName, withExtension: resolvedExtension, subdirectory: subdirectory),
           let image = UIImage(contentsOfFile: url.path) {
            return image
        }

        if let url = bundle.url(forResource: baseName, withExtension: resolvedExtension),
           let image = UIImage(contentsOfFile: url.path) {
            return image
        }

        if let url = bundle.url(forResource: name, withExtension: nil, subdirectory: subdirectory),
           let image = UIImage(contentsOfFile: url.path) {
            return image
        }

        return nil
    }

    private func splitResourceName(_ name: String, defaultExtension: String) -> (String, String) {
        let components = name.split(separator: ".", omittingEmptySubsequences: false)
        if components.count >= 2, let last = components.last {
            let base = components.dropLast().joined(separator: ".")
            return (base, String(last))
        }
        return (name, defaultExtension)
    }
}

// MARK: - Card Model

/// Domain model describing an image collection preview card.
struct ImagesCollectionPreviewCardData: Identifiable, Sendable {
    let id: UUID
    let title: String
    let itemCount: Int
    let creatorHandle: String
    let images: [ImagesCollectionPreviewImageSource]

    init(
        id: UUID = UUID(),
        title: String,
        itemCount: Int,
        creatorHandle: String,
        images: [ImagesCollectionPreviewImageSource]
    ) {
        self.id = id
        self.title = title
        self.itemCount = itemCount
        self.creatorHandle = creatorHandle
        self.images = images
    }
}
