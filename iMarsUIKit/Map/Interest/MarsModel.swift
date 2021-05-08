//
//  MarsModel.swift
//  MyiMars
//
//  Created by Catherine on 22/03/2021.
//

import Foundation
import SwiftUI

struct MarsInterest: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String
    let category: Category
    let description: String
    var latitude: Double
    var longitude: Double
    
    var imageName: String { return title}
}

enum Category: String, Codable, CaseIterable, Identifiable {
    case tout
    case topography = "Topography"
    case lansdscape = "Landscape"
    case landing = "Landing Site"
    
    var id: String { self.rawValue }
}



