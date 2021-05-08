//
//  MarsScreen.swift
//  iMarsUIKit
//
//  Created by Kevin MASLOWSKI on 18/03/2021.
//

import Foundation
import SwiftUI
import SceneKit


struct MarsScreen: View {
    
    
    let scnScene: SCNScene? = {
        if let x = SCNScene(named: "Mars_3D.usdz") {
            x.background.contents = UIImage(named: "MainScreenBackground")
            return x
        }
        return nil
    }()
    
    var body: some View {
        ZStack {
            Image("MainScreenBackground")
            SceneView(scene: scnScene, options: [.autoenablesDefaultLighting, .allowsCameraControl], preferredFramesPerSecond: 60)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        }
        .navigationTitle(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Title@*/Text("Title")/*@END_MENU_TOKEN@*/)
    }
}

struct MarsScreen_Previews: PreviewProvider {
    static var previews: some View {
        Landscape {
            MarsScreen()
        }
    }
}
