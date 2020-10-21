//
//  SimpleVideoCaptureView.swift
//  SwiftUI-CameraDemo
//
//  Created by H Chan on 2020/10/21.
//

import SwiftUI

struct SimpleVideoCaptureView: View {
    
    @ObservedObject var presenter: SimpleVideoCapturePresenter
    
    var body: some View {
        ZStack {
            CALayerView(caLayer: presenter.previewLayer)
        }
        .edgesIgnoringSafeArea(.all)
        .onAppear(perform: {
            self.presenter.apply(inputs: .onAppear)
        })
        .onDisappear(perform: {
            self.presenter.apply(inputs: .onDisappear)
        })
    }
}
