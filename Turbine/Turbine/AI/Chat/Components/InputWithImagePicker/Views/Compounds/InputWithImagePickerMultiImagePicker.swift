//
//  InputWithImagePickerMultiImagePicker.swift
//  Turbine
//
//  Created: February 01, 2026 @ 11:47:00 PM EST
//  Created_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  Last_Updated: February 01, 2026 @ 11:59:27 PM EST
//  Last_Updated_By: GPT 5.2 Codex High - Windsurf IDE - SwiftUX Refactoring Agent
//
//  PURPOSE:
//  - UIKit bridge for selecting multiple images via PHPickerViewController
//  - Provides selected images back to SwiftUI through callbacks
//
//  DATA FLOW:
//  1a) InputWithImagePickerView ─────present────▶ PHPickerViewController
//  1b) PHPickerViewController ─────result────▶ Coordinator
//  1c) Coordinator ─────callback────▶ onImagesLoaded
//
//  OBJECTS:
//  ┌──────────────────────────────┐     ┌──────────────────────────────┐
//  │ InputWithImagePickerView     │────▶│ InputWithImagePickerMulti     │
//  │ (view)                       │     │ ImagePicker (representable)  │
//  └──────────────────────────────┘     └──────────────────────────────┘
//
//  REFERENCES:
//  - SwiftUXRefactoring.md
//
// =============================================================================
//

import PhotosUI
import SwiftUI
import UIKit

// MARK: - Image Picker Representable

/// UIKit bridge for selecting multiple images.
///
/// Data Flow: Picker selections → Coordinator → onImagesLoaded callback.
struct InputWithImagePickerMultiImagePicker: UIViewControllerRepresentable {
    @Binding var isPresented: Bool
    let selectionLimit: Int
    let onImagesLoaded: ([InputWithImagePickerImageItem]) -> Void

    // MARK: - UIViewControllerRepresentable

    func makeUIViewController(context: Context) -> PHPickerViewController {
        var configuration = PHPickerConfiguration()
        configuration.filter = .images
        configuration.selectionLimit = selectionLimit

        let picker = PHPickerViewController(configuration: configuration)
        picker.delegate = context.coordinator
        return picker
    }

    func updateUIViewController(_ uiViewController: PHPickerViewController, context: Context) {}

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    // MARK: - Coordinator

    /// Coordinator handling picker selections.
    final class Coordinator: NSObject, PHPickerViewControllerDelegate {
        private let parent: InputWithImagePickerMultiImagePicker

        init(_ parent: InputWithImagePickerMultiImagePicker) {
            self.parent = parent
        }

        func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
            parent.isPresented = false
            guard !results.isEmpty else { return }

            let dispatchGroup = DispatchGroup()
            let lock = NSLock()
            var items: [InputWithImagePickerImageItem] = []

            for result in results {
                dispatchGroup.enter()
                result.itemProvider.loadObject(ofClass: UIImage.self) { object, _ in
                    defer { dispatchGroup.leave() }
                    guard let image = object as? UIImage else { return }
                    guard let data = image.jpegData(compressionQuality: 0.9) ?? image.pngData() else { return }
                    lock.lock()
                    items.append(InputWithImagePickerImageItem(data: data))
                    lock.unlock()
                }
            }

            dispatchGroup.notify(queue: .main) {
                guard !items.isEmpty else { return }
                withAnimation {
                    self.parent.onImagesLoaded(items)
                }
            }
        }
    }
}
