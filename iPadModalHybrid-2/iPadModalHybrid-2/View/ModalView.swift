//
//  ModalView.swift
//  iPadModalHybrid-2
//
//  Created by Juan Carlos Ospina Gonzalez on 27/02/2020.
//

import SwiftUI

struct ModalView: View {
    @Environment(\.viewController) private var viewControllerHolder: UIViewController?
    var body: some View {
        ZStack {
            Color.blue.edgesIgnoringSafeArea(.all)
            VStack {
                Text("I am a modal.")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                Button(action: {
                    self.viewControllerHolder?.dismiss(animated: true, completion: nil)
                }, label: {
                    Text("OK, BYE!")
                        .foregroundColor(.white)
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.white, lineWidth: 1)
                    )
                })
            }
        }
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView()
    }
}

