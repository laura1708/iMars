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
    
    // If true : Change icon button
    @State var unseeMode: Bool = false
    
    // If false : hide informations
    @State var showInformation: Bool = true
    
    // If true : Show popover
    @State var showPopover: Bool = false
    
    // This set the value of the point of interest that appear in .sheet
    @State var currentPoint: MarsInterest = MarsInterest.pointsOfInterest[12]
    
    @State var colorToPass: Color = Color("rediMars")
    
    var body: some View {
        ZStack {
            SceneView(scene: scnScene, options: self.unseeMode == true ? [.autoenablesDefaultLighting, .allowsCameraControl] : [.autoenablesDefaultLighting], preferredFramesPerSecond: 60)
                .ignoresSafeArea(.all)
            HStack {
                Spacer()
                VStack(spacing: 80) {
                    WeatherView(planet: "Mars", temperatures: "-97 / -4", pression: "857", gravity: "3.71", objDef: "Objets martiens", color: Color(UIColor(named: "rediMars")!))
                    
                    WeatherView(planet: "Terre", temperatures: "-45 / +52", pression: "1013", gravity: "9.80", objDef: "Objets terriens", color: Color(UIColor(named: "blueiMars")!))
                }
                .offset(x: -20)
                .opacity(self.unseeMode == false ? 1 : 0)
            }
            Group {
                InterestPoint(showPopover: $showPopover, currentPoint: self.$currentPoint, colorToPass: self.$colorToPass, pointToPass: MarsInterest.pointsOfInterest[1], color: Color("rediMars"), xValue: 0, yValue: 250)
                InterestPoint(showPopover: $showPopover, currentPoint: self.$currentPoint, colorToPass: self.$colorToPass, pointToPass: MarsInterest.pointsOfInterest[0], color: Color("rediMars"), xValue: 0, yValue: -300)
                InterestPoint(showPopover: $showPopover, currentPoint: self.$currentPoint, colorToPass: self.$colorToPass, pointToPass: MarsInterest.pointsOfInterest[5], color: Color("rediMars"), xValue: -240, yValue: -140)
                InterestPoint(showPopover: $showPopover, currentPoint: self.$currentPoint, colorToPass: self.$colorToPass, pointToPass: MarsInterest.pointsOfInterest[2], color: Color("blueiMars"), xValue: 100, yValue: -100)
            }
            .opacity(self.unseeMode == false ? 1 : 0)
        }
        .navigationBarHidden(/*@START_MENU_TOKEN@*/false/*@END_MENU_TOKEN@*/)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(trailing: Button(action: {
            self.unseeMode.toggle()
        }, label: {
            Image(systemName: self.unseeMode == false ? "eye" : "eye.slash")
                .foregroundColor(Color(UIColor(named: "rediMars")!))
        }))
        .sheet(isPresented: $showPopover) {
            PointsOfInterestDetail(marsPointsOfInterest: self.currentPoint, colorTitle: self.colorToPass)
                .background(Color.black)
        }
        
    }
}



struct MarsScreen_Previews: PreviewProvider {
    static var previews: some View {
        Landscape {
            MarsScreen()
        }
    }
}
