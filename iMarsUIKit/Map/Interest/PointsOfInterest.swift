//
//  PointsOfInterest.swift
//  MyiMars
//
//  Created by Catherine on 22/03/2021.
//

import SwiftUI

struct PointsOfInterest: View {
    var marsPointsOfInterest: MarsInterest
    
    var body: some View {
        VStack(alignment: .center) {
                Text(marsPointsOfInterest.title)
                    .font(Font.custom("Andale Mono", size: 26))
                    .foregroundColor(Color("blueiMars"))
            Spacer()
            ScrollView {
                Image(marsPointsOfInterest.imageName)
                    .resizable()
                    .padding(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/)
                    .scaledToFill()
                    .frame(maxWidth: 330, maxHeight: 160)
                HStack {
                    Text(marsPointsOfInterest.subtitle)
                        .font(Font.custom("SF-Compact", size: 11))
                        .foregroundColor(Color("whiteiMars"))
                        .multilineTextAlignment(.leading)
                        .padding(.top, 5.0)
                    Spacer()
                }
                HStack {
                    Text("Category : \(marsPointsOfInterest.category.rawValue)")
                        .font(Font.custom("SF-Compact", size: 13))
                        .foregroundColor(Color("whiteiMars"))
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
                .padding(.vertical, 2.0)
                
                Text(marsPointsOfInterest.description)
                    .font(Font.custom("SF-Compact", size: 16))
                    .foregroundColor(Color("whiteiMars"))
            }
        }
        .frame(maxWidth: 330, maxHeight: 500)
    }
}

struct PointsOfInterest_Previews: PreviewProvider {
    static var previews: some View {
        Landscape {
            PointsOfInterest(marsPointsOfInterest: MarsInterest.pointsOfInterest[5])
                .preferredColorScheme(.dark)
        }
    }
}
