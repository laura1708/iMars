//
//  StructurePhotosView.swift
//  iMarsUIKit
//
//  Created by Mariia Zhurina on 19/03/2021.
//

import SwiftUI
import Kingfisher
import WaterfallGrid

struct StructurePhotosView: View {
    @State var roverStore: RoverRoot?
    
    var body: some View {
        ScrollView(.vertical) {
            WaterfallGrid(roverStore?.photos ?? []) { item in
                NavigationLink(
                    destination: DetailsPhotosView(item: item),
                    label: {
                        Group {
                            if let url = URL(string: item.img_src) {
                                KFImage(url)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 200, height: 200)
                                    .clipped()
                            }
                        }
                        
                    })
                
            }.gridStyle(columns: 4)
        }.onAppear {
            if roverStore == nil {
                RoverAPI.fetch { root  in
                    roverStore = root
                }
            }
        }
        
    }
}

struct StructurePhotosView_Previews: PreviewProvider {
    static var previews: some View {
        StructurePhotosView()
    }
}
