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
                VStack {
                    Text(item.name)
                        .font(.title)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        .fontWeight(.semibold)
                    Spacer()
                }.padding(.top)
            }
        }.cornerRadius(20)
        .frame(maxWidth : 150)
        }
    }


struct Model3DRaw_Previews: PreviewProvider {
    static var previews: some View {
        Landscape {
            Model3DRaw(item: Model3D.model[0])
        }
        
    }
}
