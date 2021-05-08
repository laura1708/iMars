//
//  TestView.swift
//  iMarsUIKit
//
//  Created by Mariia Zhurina on 18/03/2021.
//

import SwiftUI

struct PhotoRoot: Decodable {
    let collection: PhotoCollection
}

struct PhotoCollection: Decodable {
    let items: [PhotoItem]
}

struct PhotoItem: Decodable, Identifiable {
    let id = UUID().uuidString
    let links: [PhotoLink]?
    let data: [PhotoData]
}

struct PhotoLink: Decodable {
    let href: String
}

struct PhotoData: Decodable {
    let title: String?
    let description: String?
    let center: String?
}

