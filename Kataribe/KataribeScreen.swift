//
//  KataribeScreen.swift
//  Kataribe
//
//  Created by Yuya Hirayama on 2018/11/25.
//  Copyright © 2018年 Yuya Hirayama. All rights reserved.
//

import Foundation

public protocol KataribeScreen {
    static func mock() -> UIViewController

    static var displayName: String { get }
}

public protocol KataribeArgument {
    static func `default`() -> Self
}

public protocol DynamicScreen {
    associatedtype Argument

    static func mock(argument: Argument) -> Self
}
