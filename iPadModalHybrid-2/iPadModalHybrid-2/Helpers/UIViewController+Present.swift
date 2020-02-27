//
//  UIViewController+Present.swift
//  iPadModalHybrid-2
//
//  Created by Juan Carlos Ospina Gonzalez on 27/02/2020.
//  Copyright © 2020 Juan Carlos Ospina Gonzalez. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

extension UIViewController {
    func present<Content: View>(style: UIModalPresentationStyle = .automatic, @ViewBuilder builder: () -> Content) {
        let toPresent = UIHostingController(rootView: AnyView(EmptyView()))
        toPresent.modalPresentationStyle = style
        toPresent.rootView = AnyView(
            builder()
                .environment(\.viewController, toPresent)
        )
        self.present(toPresent, animated: true, completion: nil)
    }
}
