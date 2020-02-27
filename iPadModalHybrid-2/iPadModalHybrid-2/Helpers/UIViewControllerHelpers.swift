//
//  UIViewControllerHelpers.swift
//  iPadModalHybrid-2
//
//  Created by Juan Carlos Ospina Gonzalez on 27/02/2020.
//  Copyright © 2020 Juan Carlos Ospina Gonzalez. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

struct ViewControllerHolder {
    weak var value: UIViewController?
}

struct ViewControllerKey: EnvironmentKey {
    static var defaultValue: ViewControllerHolder {
        return ViewControllerHolder(value: UIApplication.shared.windows.first?.rootViewController)

    }
}

extension EnvironmentValues {
    var viewController: UIViewController? {
        get { return self[ViewControllerKey.self].value }
        set { self[ViewControllerKey.self].value = newValue }
    }
}
