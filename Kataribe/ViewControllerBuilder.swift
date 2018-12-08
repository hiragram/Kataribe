//
//  ViewControllerBuilder.swift
//  Kataribe
//
//  Created by Yuya Hirayama on 2018/11/25.
//  Copyright © 2018年 Yuya Hirayama. All rights reserved.
//

import Foundation

public protocol ViewControllerBuilder {
    func build() -> UIViewController
    var displayName: String { get }
}

public struct DynamicViewControllerBuilder<ViewController: UIViewController & DynamicScreen>: ViewControllerBuilder {

    private let argument: ViewController.Argument
    public let displayName: String

    public init(argument: ViewController.Argument, displayName: String) {
        self.argument = argument
        self.displayName = displayName
    }

    public func build() -> UIViewController {
        return ViewController.mock(argument: argument)
    }
}

public struct StaticViewControllerBuilder<ViewController: UIViewController & StaticScreen>: ViewControllerBuilder {

    public init() {}

    public func build() -> UIViewController {
        return ViewController.mock()
    }

    public var displayName: String {
        return ViewController.displayName
    }
}
