//
//  VideoDetail.swift
//  iMarsUIKit
//
//  Created by Catherine on 21/03/2021.
//

import SwiftUI
import AVKit

struct VideoDetail: View {
    var video: Video
    
    var body: some View {
        VStack {
            Text(video.titel)
                .font(Font.custom("Andale Mono", size: 25))
                .foregroundColor(Color("blueiMars"))
            VideoPlayer(player: AVPlayer(url:  URL(string: video.source)!))
            Text(video.date)
                .foregroundColor(Color("rediMars"))
                .multilineTextAlignment(.leading)
            Text(video.description)
                .font(Font.custom("SF-Compact", size: 18))
                .foregroundColor(Color("whiteiMars"))
                .padding(.horizontal)
        }
        .navigationBarItems(trailing: Button(action: {
            print("Share")
        }, label: {
            Image(systemName: "square.and.arrow.up")
                .foregroundColor(Color(UIColor(named: "rediMars")!))
        }))
    }
}

struct VideoDetail_Previews: PreviewProvider {
    static var previews: some View {
        Landscape {
            VideoDetail(video: Video.data[1])
                .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        }
    }
}
