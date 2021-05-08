//
//  BibliLauraView.swift
//  iMars
//
//  Created by Laura on 17/03/2021.
//

import SwiftUI

struct BibliLauraView: View {
    let data: Data
    var body: some View {
        VStack {
            Image(data.image)
                .resizable()
                .scaledToFit()
                .frame(maxWidth : 250, maxHeight: 140)
                .cornerRadius(5.0)
            
            Text(data.title)
        }
    }
}

struct BibliLauraView_Previews: PreviewProvider {
    static var previews: some View {
        Landscape {
            BibliLauraView(data: Datas[1])
        }
    }
}
