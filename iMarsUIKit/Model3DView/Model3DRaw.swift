//
//  Model3DRaw.swift
//  iMars
//
//  Created by Lyes BOUKBOUKA on 18/03/2021.
//

import SwiftUI

struct Model3DRaw: View {
    let item : Model3D
    var body: some View {
        
        VStack {
            ZStack{
                Image(item.name)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(8)
                VStack(alignment: .center, spacing: 100.0) {
                    Text(item.name)
//                        .font(.title2)
                        .foregroundColor(Color("rediMars"))
                        .fontWeight(.semibold)
                        .font(.custom("Andale Mono", size: 23))
                        .offset(y:25)
                    Spacer()
                }
            }
        }.cornerRadius(5)
        .frame(maxWidth : 170)
        }
    }


struct Model3DRaw_Previews: PreviewProvider {
    static var previews: some View {
        Landscape {
            Model3DRaw(item: Model3D.model[0])
        }
        
    }
}
