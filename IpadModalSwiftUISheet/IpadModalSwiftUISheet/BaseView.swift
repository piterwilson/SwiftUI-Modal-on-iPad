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
        VStack {
            Button(action: {
                self.showModal = true
            }, label: {
                Text("Open Modal")
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.blue, lineWidth: 1)
                )
            })
        }.sheet(isPresented: $showModal){
            ModalView(closeAction: { self.showModal = false })
        }
    }
}

struct BaseView_Previews: PreviewProvider {
    static var previews: some View {
        BaseView()
    }
}
