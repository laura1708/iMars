//
//  MarsScreen.swift
//  iMarsUIKit
//
//  Created by Kevin MASLOWSKI on 18/03/2021.
//

import Foundation
import SwiftUI
import SceneKit
import SpriteKit

struct MarsScreen: View {
    
    // Init 3D Mars with a space background
    let scnScene: SCNScene? = {
        if let mars3D = SCNScene(named: "Mars_3D.usdz") {
            mars3D.background.contents = UIImage(named: "MainScreenBackground")
            return mars3D
        }
        return nil
    }()
    
//    let sceneView: SceneView? = SceneView(scene: scnScene, options: [.autoenablesDefaultLighting, .allowsCameraControl], preferredFramesPerSecond: 60)
    
    
    // If true : Change icon button
    @State var unseeMode: Bool = false
    
    // If false : hide informations
    @State var showInformation: Bool = true
    
    var body: some View {
        ZStack {
            SceneView(scene: scnScene, options: [.autoenablesDefaultLighting, .allowsCameraControl], preferredFramesPerSecond: 60)
                .ignoresSafeArea(.all)
            HStack {
                Spacer()
                VStack {
                    WeatherView(planet: "Mars", temperatures: "-97 / -4", pression: "857", gravity: "3.71", objDef: "Objets martiens", color: Color(UIColor(named: "rediMars")!))
                    WeatherView(planet: "Terre", temperatures: "-45 / +52", pression: "1013", gravity: "9.80", objDef: "Objets terriens", color: Color(UIColor(named: "blueiMars")!))
                }
                .offset(x: -20)
                .opacity(self.unseeMode == false ? 1 : 0)
            }
        }
        .navigationBarHidden(/*@START_MENU_TOKEN@*/false/*@END_MENU_TOKEN@*/)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(trailing: Button(action: {
            self.unseeMode.toggle()
        }, label: {
            Image(systemName: self.unseeMode == false ? "eye" : "eye.slash")
                .foregroundColor(Color(UIColor(named: "rediMars")!))
        }))
    }
}



struct MarsScreen_Previews: PreviewProvider {
    static var previews: some View {
        Landscape {
            MarsScreen()
        }
    }
}
