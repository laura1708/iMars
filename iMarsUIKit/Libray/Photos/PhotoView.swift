//
//  PhotoView.swift
//  iMars
//
//  Created by Mariia Zhurina on 18/03/2021.
//

import SwiftUI
import Kingfisher

struct PhotoView: View {
    @State var photosStore: PhotoRoot?
    
    var items: [PhotoItem] {
        photosStore?.collection.items.filter{ $0.data.first?.center != "HQ" } ?? []
    }
    
    var body: some View {
        VStack {
            List(items) { item in
                if let urlString = item.links?.first?.href,
                   let url = URL(string: urlString) {
                   KFImage(url)
                }
            }
        }.onAppear {
            PhotoAPI.fetch { photos in
                self.photosStore = photos
            }
        }
        
    }
}

struct PhotoView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoView()
    }
}
