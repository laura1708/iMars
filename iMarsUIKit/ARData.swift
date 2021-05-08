//
//  ARData.swift
//  iMarsUIKit
//
//  Created by Lyes BOUKBOUKA on 26/03/2021.
//


import UIKit
import RealityKit
import Combine

class Model {
    
    var modelName: String
    var image: UIImage
    var modelEntity: ModelEntity?
    
    private var cancellable: AnyCancellable? = nil
    
    init(modelName: String) {
        self.modelName = modelName
        
        self.image = UIImage(named: modelName)!
        
        let filename = modelName + ".usdz"
        
        self.cancellable = ModelEntity.loadModelAsync(named: filename).sink(receiveCompletion:  {
            loadCompletion in
            // Handle our error
            print("DEBUG: Unable to load modelEntity for modelName : \(self.modelName)")
        }, receiveValue: {
            modelEntity in
            //get our modelEntity
            
        
            self.modelEntity = modelEntity
            
            
            print("DEBUG: Successfully loaded modelEntity for modelName : \(self.modelName)")
            
        })
    }}
