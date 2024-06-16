//
//  ViewController.swift
//  TarotScanner
//
//  Created by Ian Denysenko on 16.06.2024.
//

import Foundation
import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cameraButton = UIButton(type: .system)
        cameraButton.setTitle("Scan Tarot Card", for: .normal)
        cameraButton.addTarget(self, action: #selector(openCamera), for: .touchUpInside)
        
        cameraButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(cameraButton)
        
        NSLayoutConstraint.activate([
            cameraButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            cameraButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @objc func openCamera() {
        let cameraVC = CameraViewController()
        present(cameraVC, animated: true, completion: nil)
    }
}
