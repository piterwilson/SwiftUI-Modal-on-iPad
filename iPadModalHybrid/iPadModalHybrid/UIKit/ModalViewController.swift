//
//  ModalViewController.swift
//  iPadModalHybrid
//
//  Created by Juan Carlos Ospina Gonzalez on 14/02/2020.
//  Copyright © 2020 Juan Carlos Ospina Gonzalez. All rights reserved.
//

import UIKit
import SwiftUI
import Combine
class ModalViewController: UIHostingController<ModalView> {
    var dismissRequestDelegate: DismissRequestDelegate?
    var dismissRequestSubscription: AnyCancellable?
    init() {
        super.init(rootView: ModalView())
    }
    required init?(coder aDecoder: NSCoder) {
        dismissRequestDelegate = DismissRequestDelegate()
        super.init(coder: aDecoder, rootView: ModalView(delegate: dismissRequestDelegate))
        dismissRequestSubscription = dismissRequestDelegate?.objectWillChange.sink(receiveValue:{[weak self] _ in
            self?.dismiss(animated: true, completion: nil) })
    }
}
