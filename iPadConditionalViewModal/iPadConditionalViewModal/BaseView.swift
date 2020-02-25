//
//  ContentView.swift
//  iPadModalSwiftUISheet
//
//  Created by Juan Carlos Ospina Gonzalez on 14/02/2020.
//  Copyright © 2020 Juan Carlos Ospina Gonzalez. All rights reserved.
//

import SwiftUI

struct BaseView: View {
    @State private var showModal = false
    var body: some View {
        ZStack {
            if showModal {
                ModalView(closeAction: {
                    withAnimation(.easeOut(duration: 0.25)) { self.showModal = false }
                }).transition(.slideBottom)
            } else {
                VStack {
                    Button(action: {
                        withAnimation(.easeOut(duration: 0.25)) {
                            self.showModal = true
                        }
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
        }.statusBar(hidden: true)
    }
}

struct BaseView_Previews: PreviewProvider {
    static var previews: some View {
        BaseView()
    }
}
