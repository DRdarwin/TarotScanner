//
//  CameraViewController.swift
//  TarotScanner
//
//  Created by Ian Denysenko on 16.06.2024.
//

import UIKit
import AVFoundation
import Vision
import CoreML

class CameraViewController: UIViewController, AVCaptureVideoDataOutputSampleBufferDelegate {
    var captureSession: AVCaptureSession!
    var previewLayer: AVCaptureVideoPreviewLayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        captureSession = AVCaptureSession()
        captureSession.beginConfiguration()
        
        let videoDevice = AVCaptureDevice.default(for: .video)
        let videoInput = try? AVCaptureDeviceInput(device: videoDevice!)
        
        if captureSession.canAddInput(videoInput!) {
            captureSession.addInput(videoInput!)
        }
        
        let videoOutput = AVCaptureVideoDataOutput()
        videoOutput.setSampleBufferDelegate(self, queue: DispatchQueue(label: "videoQueue"))
        
        if captureSession.canAddOutput(videoOutput) {
            captureSession.addOutput(videoOutput)
        }
        
        captureSession.commitConfiguration()
        
        previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        previewLayer.frame = view.layer.bounds
        view.layer.addSublayer(previewLayer)
        
        captureSession.startRunning()
    }
    
    func captureOutput(_ output: AVCaptureOutput, didOutput sampleBuffer: CMSampleBuffer, from connection: AVCaptureConnection) {
        guard let pixelBuffer = CMSampleBufferGetImageBuffer(sampleBuffer) else { return }
        
        let request = VNCoreMLRequest(model: try! VNCoreMLModel(for: TarotCardModel().model)) { (request, error) in
            if let results = request.results as? [VNClassificationObservation] {
                if let bestResult = results.first {
                    DispatchQueue.main.async {
                        let resultVC = ResultViewController()
                        resultVC.cardName = bestResult.identifier
                        resultVC.cardDescription = TarotCardData.shared.getDescription(for: bestResult.identifier)
                        self.present(resultVC, animated: true, completion: nil)
                    }
                }
            }
        }
        
        let handler = VNImageRequestHandler(cvPixelBuffer: pixelBuffer, options: [:])
        try? handler.perform([request])
    }
}
