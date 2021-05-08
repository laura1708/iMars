//
//  PointOfInterestDetail.swift
//  iMarsUIKit
//
//  Created by Kevin MASLOWSKI on 24/03/2021.
//

import SwiftUI

struct PointsOfInterestDetail: View {
    
    var marsPointsOfInterest: MarsInterest
    var colorTitle: Color
    
    var body: some View {
        VStack(alignment: .center) {
            Text(marsPointsOfInterest.title)
                .font(Font.custom("Andale Mono", size: 32))
                .foregroundColor(colorTitle)
                .padding(.top)
            ScrollView {
                Image(marsPointsOfInterest.imageName)
                    .resizable()
                    .padding(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/)
                    .scaledToFill()
                HStack {
                    Text(marsPointsOfInterest.subtitle)
                        .font(Font.custom("SF-Compact", size: 16))
                        .foregroundColor(Color("whiteiMars"))
                        .multilineTextAlignment(.leading)
                        .padding(.all)
                    Spacer()
                }
                
                HStack {
                    Text("Category : \(marsPointsOfInterest.category.rawValue)")
                        .font(Font.custom("SF-Compact", size: 16))
                        .foregroundColor(Color("whiteiMars"))
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
                .padding(.all)
                
                Text(marsPointsOfInterest.description)
                    .font(Font.custom("SF-Compact", size: 16))
                    .foregroundColor(Color("whiteiMars"))
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .padding(.all)
            }
        }
    }
}

struct PointsOfInterest_Previews: PreviewProvider {
    static var previews: some View {
        Landscape {
            PointsOfInterestDetail(marsPointsOfInterest: MarsInterest.pointsOfInterest[0], colorTitle: Color("rediMars"))
        }
    }
}

