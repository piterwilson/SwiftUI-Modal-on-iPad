//
//  DissmissRequestDelegate.swift
//  iPadModalHybrid
//
//  Created by Juan Carlos Ospina Gonzalez on 14/02/2020.
//  Copyright © 2020 Juan Carlos Ospina Gonzalez. All rights reserved.
//

import Foundation
import SwiftUI
import Combine
class DismissRequestDelegate: ObservableObject {
    let objectWillChange = PassthroughSubject<Void, Never>()
    func requestDismiss() {
        objectWillChange.send(())
    }
}
