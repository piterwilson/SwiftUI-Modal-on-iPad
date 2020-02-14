//
//  BaseView.swift
//  iPadModalHybrid
//
//  Created by Juan Carlos Ospina Gonzalez on 14/02/2020.
//  Copyright © 2020 Juan Carlos Ospina Gonzalez. All rights reserved.
//

import SwiftUI

struct BaseView: View {
    var delegate: PresentationRequestDelegate?
    var body: some View {
        VStack {
            Button(action: {
                self.delegate?.requestPresentation(identifier: "modal")
            }, label: {
                Text("Open Modal")
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.blue, lineWidth: 1)
                )
            })
        }
    }
}

struct BaseView_Previews: PreviewProvider {
    static var previews: some View {
        BaseView()
    }
}
