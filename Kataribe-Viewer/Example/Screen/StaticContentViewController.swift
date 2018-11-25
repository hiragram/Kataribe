//
//  StaticContentViewController.swift
//  Kataribe-Viewer
//
//  Created by Yuya Hirayama on 2018/11/25.
//  Copyright © 2018年 Yuya Hirayama. All rights reserved.
//

import UIKit
import Kataribe

final class StaticContentViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .yellow
    }
}

extension StaticContentViewController: KataribeScreen {
    static func mock() -> UIViewController {
        return StaticContentViewController.init(nibName: nil, bundle: nil)
    }

    static var displayName: String {
        return "Yellow static screen"
    }
}
