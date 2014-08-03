//
//  AVCamViewController.swift
//  AVCam
//
//  Created by Eric Zou on 7/29/14.
//  Copyright (c) 2014 Eric Zou. All rights reserved.
//

// how to change uibutton color on ios
// how to view log output in swift simulator
// how to show line number in xcode cmd + , text editor -> line number
// get ride of the no initializer error -> make sure variables are assigned or declared with !
// how to know what class an instance is object_getClassName(self.layer)
// how to declare class method -> class func
// how to use interactive debugger console: po self.layer!
// how to convert a objective-c block to swift
// how to use UIAlertView to debug
// difference between viewDidLoad and viewWillAppear :viewDidLoad called once, viewWillAppear called everytime view appears
// how to cast array to a different type of array: AVCaptureDevice.devicesWithMediaType(mediaType) as [AVCaptureDevice]

import Foundation
import UIKit
import AVFoundation

class AVCamViewController: UIViewController {

    @IBOutlet strong var previewView: AVCamPreviewView!
    @IBOutlet var recordButton: UIButton!
    
    @IBAction func toggleMovieRecording(sender: AnyObject) {
        println("button tapped")
    }
    
    var session: AVCaptureSession!
    var deviceAuthorized: Bool = false

    
    func isSessionRunningAndDeviceAuthorized() -> Bool {
        return self.session.running && self.deviceAuthorized
    }
    
    func keyPathsForValuesAffectingSessionRunningAndDeviceAuthorized() -> NSSet{
        return NSSet(objects:["session.running", "deviceAuthorized", nil]) // this is not in the document
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.session = AVCaptureSession()
        self.previewView.setSession(self.session)
        
        self.checkDeviceAuthorizationStatus()
        
        var error: NSErrorPointer! = NSErrorPointer()
        var videoDevice = AVCamViewController.deviceWithMediaType(AVMediaTypeVideo, preferringPosition: AVCaptureDevicePosition.Back)
        var videoDeviceInput: AVCaptureDeviceInput = AVCaptureDeviceInput.deviceInputWithDevice(videoDevice, error: error) as AVCaptureDeviceInput
        
        self.session.addInput(videoDeviceInput)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        self.session.startRunning()
    }
    
    func checkDeviceAuthorizationStatus() {
        var mediaType: String = AVMediaTypeVideo
        func ch(granted: Bool) {
            if (granted) {
                self.deviceAuthorized = true
                dispatch_async(dispatch_get_main_queue(), {
                    UIAlertView(title: "Access granted", message: "you are good", delegate: self, cancelButtonTitle: "OK").show()
                    })

            } else {
                dispatch_async(dispatch_get_main_queue(), {
                    UIAlertView(title: "Access not allowed", message: "no permission", delegate: self, cancelButtonTitle: "OK").show()
                })
                println("not allow access camera")
            }
        }
        
        AVCaptureDevice.requestAccessForMediaType(mediaType, ch)
    }
    
    class func deviceWithMediaType(mediaType: NSString, preferringPosition position: AVCaptureDevicePosition) -> AVCaptureDevice {
        var devices = AVCaptureDevice.devicesWithMediaType(mediaType) as [AVCaptureDevice]
        var captureDevice: AVCaptureDevice = devices[0]
        
        for device in devices {
            if device.position == position {
                captureDevice = device
                break
            }
        }
        return captureDevice
    }
    
}