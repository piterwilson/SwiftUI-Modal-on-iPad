//
//  SlideBottomTransition.swift
//  iPadConditionalViewModal
//
//  Created by Juan Carlos Ospina Gonzalez on 25/02/2020.
//  Copyright © 2020 Juan Carlos Ospina Gonzalez. All rights reserved.
//

import SwiftUI

struct SlideBottomModifier: ViewModifier {
    let offset: CGFloat
    func body(content: Content) -> some View {
        content.offset(CGSize(width: 0.0, height: offset))
    }
}

extension AnyTransition {
    static var slideBottom: AnyTransition {
        .modifier(
            active: SlideBottomModifier(offset: UIScreen.main.bounds.height),
            identity: SlideBottomModifier(offset: 00.0)
        )
    }
}
