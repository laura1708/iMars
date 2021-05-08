//
//  ContentView.swift
//  iMarsUIKit
//
//  Created by Kevin MASLOWSKI on 19/03/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Sidebar()
        }
        .navigationViewStyle(DoubleColumnNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
