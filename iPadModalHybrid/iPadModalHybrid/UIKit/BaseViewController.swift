//
//  ViewController.swift
//  iPadModalHybrid
//
//  Created by Juan Carlos Ospina Gonzalez on 14/02/2020.
//  Copyright © 2020 Juan Carlos Ospina Gonzalez. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI
import Combine

class BaseViewController: UIHostingController<BaseView> {
    var presentationRequestDelegate: PresentationRequestDelegate?
    var presentationRequestSubscription: AnyCancellable?
    required init?(coder aDecoder: NSCoder) {
        presentationRequestDelegate = PresentationRequestDelegate()
        super.init(coder: aDecoder, rootView: BaseView(delegate: presentationRequestDelegate))
        presentationRequestSubscription = presentationRequestDelegate?.objectWillChange.sink(receiveValue: {[weak self] identifier in
            self?.handlePresentationRequest(identifier: identifier)
        })
    }
    private func handlePresentationRequest(identifier: String) {
        if identifier == "modal" {
            performSegue(withIdentifier: "showModal", sender: self)
        }
    }
}
