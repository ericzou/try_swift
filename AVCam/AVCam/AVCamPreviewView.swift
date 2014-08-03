//
//  AVCamPreviewView.swift
//  AVCam
//
//  Created by Eric Zou on 7/30/14.
//  Copyright (c) 2014 Eric Zou. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

class AVCamPreviewView: UIView {
    
    override class func layerClass ()-> AnyClass {
        return AVCaptureVideoPreviewLayer.self
    }
    
    func session () -> AVCaptureSession {
        var layer = self.layer as AVCaptureVideoPreviewLayer
        return layer.session
    }
    
    func setSession(session: AVCaptureSession) {
        var layer = self.layer as AVCaptureVideoPreviewLayer
        return layer.session = session
    }
}
