//
//  ScreenListSource.swift
//  Kataribe
//
//  Created by Yuya Hirayama on 2018/11/25.
//  Copyright © 2018年 Yuya Hirayama. All rights reserved.
//

import Foundation

public protocol ScreenListSource {
    static func screenList() -> [KataribeScreen.Type]
}
