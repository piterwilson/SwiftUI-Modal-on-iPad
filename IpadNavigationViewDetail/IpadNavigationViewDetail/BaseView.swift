//
//  ContentView.swift
//  iPadModalSwiftUISheet
//
//  Created by Juan Carlos Ospina Gonzalez on 14/02/2020.
//  Copyright © 2020 Juan Carlos Ospina Gonzalez. All rights reserved.
//

import SwiftUI

struct BaseView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: ModalView()) {
                    Text("Open Modal")
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 5).stroke(Color.blue, lineWidth: 1)
                    )
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct BaseView_Previews: PreviewProvider {
    static var previews: some View {
        BaseView()
    }
}
