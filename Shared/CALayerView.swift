//
//  CALayerView.swift
//  SwiftUI-CameraDemo
//
//  Created by H Chan on 2020/10/21.
//

import SwiftUI

//struct CALayerView: UIViewControllerRepresentable {
//    typealias UIViewControllerType = UIViewController
//    var caLayer: CALayer
//
//    func makeUIViewController(context: Context) -> UIViewController {
//        let viewController = UIViewController()
//        viewController.view.layer.addSublayer(caLayer)
//        caLayer.frame = viewController.view.layer.frame
//        return viewController
//    }
//
//    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
//        caLayer.frame = uiViewController.view.layer.frame
//    }
//}

struct CALayerView: UIViewRepresentable {
    typealias UIViewType = UIView
    var caLayer: CALayer
    
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        view.layer.addSublayer(caLayer)
        caLayer.frame = view.layer.frame
        view.layer.masksToBounds = true
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        caLayer.frame = uiView.layer.bounds
    }
}
