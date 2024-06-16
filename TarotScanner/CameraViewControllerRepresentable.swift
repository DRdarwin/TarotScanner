//
//  CameraViewControllerRepresentable.swift
//  TarotScanner
//
//  Created by Ian Denysenko on 16.06.2024.
//

import SwiftUI
import UIKit

struct CameraViewControllerRepresentable: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> CameraViewController {
        return CameraViewController()
    }
    
    func updateUIViewController(_ uiViewController: CameraViewController, context: Context) {
        // Do nothing
    }
}
