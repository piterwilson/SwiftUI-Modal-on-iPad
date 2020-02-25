//
//  ModalView.swift
//  iPadModalSwiftUISheet
//
//  Created by Juan Carlos Ospina Gonzalez on 14/02/2020.
//  Copyright © 2020 Juan Carlos Ospina Gonzalez. All rights reserved.
//

import SwiftUI

protocol DismissableView: View {
    var presentationMode: Binding<PresentationMode> { get }
    func dismiss()
}

extension DismissableView {
    func dismiss() {
        self.presentationMode.wrappedValue.dismiss()
    }
}

struct ModalView: DismissableView {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
            VStack {
                Text("I am a modal.")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                Button(action: {
                    self.dismiss()
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
        }.navigationBarBackButtonHidden(true)
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView()
    }
}
