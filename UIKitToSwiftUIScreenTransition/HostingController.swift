//
//  HostingController.swift
//  UIKitToSwiftUIScreenTransition
//
//  Created by 柿崎 on 2024/05/07.
//

import SwiftUI

final class HostingController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setSwiftUIViewForHostingViewController()
    }
}

private extension HostingController {

    func setSwiftUIViewForHostingViewController() {
        let vc = UIHostingController(rootView: ContentView())
        addChild(vc)  // 子ビューコントローラとして追加
        view.addSubview(vc.view)

        vc.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            vc.view.topAnchor.constraint(equalTo: view.topAnchor),
            vc.view.leftAnchor.constraint(equalTo: view.leftAnchor),
            vc.view.rightAnchor.constraint(equalTo: view.rightAnchor),
            vc.view.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        vc.didMove(toParent: self)  // 子ビューコントローラの追加が完了
    }
}
