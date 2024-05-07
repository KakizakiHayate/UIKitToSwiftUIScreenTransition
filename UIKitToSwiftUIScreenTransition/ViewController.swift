//
//  ViewController.swift
//  UIKitToSwiftUIScreenTransition
//
//  Created by 柿崎 on 2024/05/07.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        label.text = "い"
        button.setTitle("クリック", for: UIControl.State.normal)
    }

    @IBAction func navigationButton(_ sender: UIButton) {
        label.text = "あ"
        pushToSwiftUIView()
    }
    
}

private extension ViewController {

    func pushToSwiftUIView() {
        let hostingVC = HostingController()
        navigationController?.pushViewController(hostingVC, animated: true)
    }

    func presntSwiftUIView() {
        let hostingVC = HostingController()
        hostingVC.modalTransitionStyle = .coverVertical
        hostingVC.modalPresentationStyle = .automatic
        present(hostingVC, animated: true)
    }
}
