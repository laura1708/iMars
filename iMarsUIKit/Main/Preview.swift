//
//  Preview.swift
//  iMarsUIKit
//
//  Created by Lyes BOUKBOUKA on 18/03/2021.
//
import Foundation
import SwiftUI

extension Color {
    static let colorBlue = Color("blueImars")
    static let colorRed = Color("redImars")
    static let colorBlack = Color("blackImars")
    static let colorWhite = Color("whiteImars")
}

struct Landscape<Content>: View where Content: View {
    let content: () -> Content
    let height = UIScreen.main.bounds.width
    let width = UIScreen.main.bounds.height
    var body: some View {
        content().previewLayout(PreviewLayout.fixed(width: width, height: height))
    }
}
