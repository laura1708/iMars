//
//  VideoModel.swift
//  iMarsUIKit
//
//  Created by Catherine Gregeois on 18/03/2021.
//

import Foundation

struct Video: Identifiable {
    let id = UUID()
    let titel: String
    let date: String
    let source: String
    let description: String
}
