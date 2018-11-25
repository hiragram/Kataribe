//
//  ExampleScreenListSource.swift
//  Kataribe-Viewer
//
//  Created by Yuya Hirayama on 2018/11/25.
//  Copyright © 2018年 Yuya Hirayama. All rights reserved.
//

import Foundation
import Kataribe

struct ExampleScreenListSource: ScreenListSource {
    static func screenList() -> [KataribeScreen.Type] {
        return [
            StaticContentViewController.self
        ]
    }
}
