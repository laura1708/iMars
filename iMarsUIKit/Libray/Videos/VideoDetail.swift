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
            VideoPlayer(player: AVPlayer(url:  URL(string: video.source)!)) {
                VStack {
                    Text(video.titel)
                        .font(Font.custom("Andale Mono", size: 25))
                        .foregroundColor(Color("blueiMars"))
                    Spacer()
                }
            }
            Text(video.date)
                .foregroundColor(Color("rediMars"))
                .multilineTextAlignment(.leading)
            Text(video.description)
                .font(Font.custom("SF-Compact", size: 18))
                .foregroundColor(Color("whiteiMars"))
                .padding(.horizontal)
        }
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
