//
//  DetailsPhotosView.swift
//  iMarsUIKit
//
//  Created by Mariia Zhurina on 19/03/2021.
//

import SwiftUI
import Kingfisher


struct DetailsPhotosView: View {
    let item: RoverPhoto
    
    var body: some View {
        
            VStack {
                if let url = URL(string: item.img_src) {
                    KFImage(url)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: 700)
                        .cornerRadius(5.0)
                }
                Text(item.rover.name)
                    .font(.custom("Andale Mono", size: 25))
                    .foregroundColor(Color("rediMars"))
                
                
           
        }
    }
}
