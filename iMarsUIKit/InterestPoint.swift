//
//  InterestPoint.swift
//  iMarsUIKit
//
//  Created by Kevin MASLOWSKI on 24/03/2021.
//

import SwiftUI

struct InterestPoint: View {
    
    @Binding var showPopover: Bool
    @Binding var currentPoint: MarsInterest
    @Binding var colorToPass: Color
    var pointToPass: MarsInterest
    var color: Color
    var xValue: CGFloat
    var yValue: CGFloat
    
    var body: some View {
        Button(action: {
            self.currentPoint = pointToPass
            self.colorToPass = color
            self.showPopover.toggle()
        }, label: {
            Image(systemName: "circle")
                .foregroundColor(color)
        })
        .offset(x: xValue, y: yValue)
        .font(Font.title.weight(.bold))
    }
}

struct InterestPoint_Previews: PreviewProvider {
    static var previews: some View {
        InterestPoint(showPopover: .constant(true), currentPoint: .constant(MarsInterest.pointsOfInterest[0]), colorToPass: .constant(Color.blue), pointToPass: MarsInterest.pointsOfInterest[1], color: Color("rediMars"), xValue: 10.0, yValue: 10.0)
    }
}
