//
//  Model3D.swift
//  iMars
//
//  Created by Lyes BOUKBOUKA on 18/03/2021.
//

import Foundation

struct Model3D : Identifiable{
    
    let id = UUID()
    let name : String
    let fileName : String
    let desc : String
    let type : String
    
    
    
    
}

extension Model3D {
    static var model : [Model3D] {
        
        [
            Model3D(name: "Mars", fileName: "Mars.usdz", desc: "Description de curiosity", type: "Model3D"),
            Model3D(name: "Perseverance", fileName: "Perseverance.usdz", desc: "Description de curiosity", type: "Model3D"),
            Model3D(name: "Curiosity", fileName: "Curiosity.usdz", desc: "Description de curiosity", type: "Model3D"),
            Model3D(name: "Deimos", fileName: "Deimos.usdz", desc: "Description de curiosity", type: "Model3D"),
            Model3D(name: "Ingenuity", fileName: "Ingenuity.usdz", desc: "Description de curiosity", type: "Model3D"),
            Model3D(name: "InSight", fileName: "InSight.usdz", desc: "Description de curiosity", type: "Model3D"),
            Model3D(name: "Maven", fileName: "Maven.usdz", desc: "Description de curiosity", type: "Model3D"),
            Model3D(name: "MER", fileName: "MER.usdz", desc: "Description de curiosity", type: "Model3D"),
            Model3D(name: "MRO", fileName: "MRO.usdz", desc: "Description de curiosity", type: "Model3D"),
            Model3D(name: "Odyssey", fileName: "Odyssey.usdz", desc: "Description de curiosity", type: "Model3D"),
            Model3D(name: "Phobos", fileName: "Phobos.usdz", desc: "Description de curiosity", type: "Model3D")
        ]
    }
}
