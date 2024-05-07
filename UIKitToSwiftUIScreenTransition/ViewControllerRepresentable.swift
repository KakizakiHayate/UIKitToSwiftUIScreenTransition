//
//  ViewControllerRepresentable.swift
//  UIKitToSwiftUIScreenTransition
//
//  Created by 柿崎 on 2024/05/07.
//

import SwiftUI
import UIKit

struct ViewControllerRepresentable: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> ViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(identifier: "ViewControllerID") as! ViewController
        return viewController
    }

    func updateUIViewController(_ uiViewController: ViewController, context: Context) {

    }
}
