//
//  RoverData.swift
//  iMarsUIKit
//
//  Created by Mariia Zhurina on 22/03/2021.
//


import SwiftUI

struct RoverRoot: Decodable {
    let photos: [RoverPhoto]
}

struct RoverPhoto: Decodable, Identifiable {
    let id: Int
    let camera: CameraName
    let img_src: String
    let earth_date: String
    let rover: RoverDetails
    
}

struct CameraName: Decodable {
    let full_name: String
    
}

struct RoverDetails: Decodable {
    let name: String
    let landing_date: String
}
