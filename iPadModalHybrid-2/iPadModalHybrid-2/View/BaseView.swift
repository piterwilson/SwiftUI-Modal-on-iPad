//
//  ContentView.swift
//  iPadModalHybrid-2
//
//  Created by Juan Carlos Ospina Gonzalez on 27/02/2020.
//

import SwiftUI

struct BaseView: View {
    @Environment(\.viewController) private var viewControllerHolder: UIViewController?

    var body: some View {
        VStack {
            Button(action: {
                self.viewControllerHolder?.present(style: .fullScreen) {
                    ModalView()
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BaseView()
    }
}
