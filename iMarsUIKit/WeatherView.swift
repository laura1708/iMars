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
        VStack(alignment: .trailing) {
            Text("\(planet)")
                .bold()
                .font(.title2)
                .foregroundColor(color)
            Text("Températures °C")
                .foregroundColor(color)
            Text("\(temperatures)")
                .foregroundColor(.white)
            Text("Pression PA")
                .foregroundColor(color)
            Text("\(pression)")
                .foregroundColor(.white)
            Text("Gravité m/s")
                .foregroundColor(color)
            Text("\(gravity)")
                .foregroundColor(.white)
            Text("O")
                .bold()
                .foregroundColor(color)
            Text("\(objDef)")
                .foregroundColor(.white)
            
        }
        .padding()
        .background(Color.black .opacity(0.5))
        .cornerRadius(10)
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(planet: "Mars", temperatures: "-97°C / -4°C", pression: "857", gravity: "3.71", objDef: "Objets martiens", color: Color(UIColor(named: "rediMars")!))
    }
}
