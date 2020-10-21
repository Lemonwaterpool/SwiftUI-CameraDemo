//
//  SimpleVideoCapturePresenter.swift
//  SwiftUI-CameraDemo
//
//  Created by H Chan on 2020/10/21.
//

import SwiftUI

final class SimpleVideoCapturePresenter: ObservableObject {
    
    enum Inputs {
        case onAppear
        case tappedCameraButton
        case onDisappear
    }
    
    var previewLayer: CALayer {
        return interactor.previewLayer!
    }
    
    init() {
        interactor.setupAVCaptureSession()
    }
    
    func apply(inputs: Inputs) {
        switch inputs {
        case .onAppear:
            interactor.startSession()
            break
        case .tappedCameraButton:
            break
        case .onDisappear:
            interactor.stopSession()
        }
    }
    
    private let interactor = SimpleVideoCaptureInterator()
}
