//
//  WeatherView.swift
//  iMarsUIKit
//
//  Created by Kevin MASLOWSKI on 23/03/2021.
//

import SwiftUI

struct WeatherView: View {
    
    var planet: String
    var temperatures: String
    var pression: String
    var gravity: String
    var objDef: String
    var color: Color
    
    var body: some View {
        VStack(alignment: .trailing, spacing: 3) {
            Text("\(planet)")
                .bold()
//                .font(.title2)
                .foregroundColor(color)
                .font(.custom("Andale Mono", size: 27))
            Text("Températures °C")
                .foregroundColor(color)
                .font(.custom("Andale Mono", size: 17))
            Text("\(temperatures)")
                .foregroundColor(.white)
                .font(.custom("Andale Mono", size: 17))
            Text("Pression PA")
                .foregroundColor(color)
                .font(.custom("Andale Mono", size: 17))
            Text("\(pression)")
                .foregroundColor(.white)
                .font(.custom("Andale Mono", size: 17))
            Text("Gravité m/s")
                .foregroundColor(color)
                .font(.custom("Andale Mono", size: 17))
            Text("\(gravity)")
                .foregroundColor(.white)
                .font(.custom("Andale Mono", size: 17))
            Image(systemName: "circle")
                .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                .foregroundColor(color)
            Text("\(objDef)")
                .foregroundColor(.white)
                .font(.custom("Andale Mono", size: 17))
            
        }
        .padding()
        .background(Color.black .opacity(0.2))
        .cornerRadius(6)
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(planet: "Mars", temperatures: "-97°C / -4°C", pression: "857", gravity: "3.71", objDef: "Objets martiens", color: Color(UIColor(named: "rediMars")!))
    }
}
