//
//  VideoGrid.swift
//  iMarsUIKit
//
//  Created by Catherine on 21/03/2021.
//

import SwiftUI
import AVKit

struct VideoGrid: View {
    var hGridLayout = [
        GridItem(.adaptive(minimum: 300, maximum: 300))
    ]
    var video: [Video]
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: hGridLayout) {
                ForEach(video) { videos in
                    VideoInGrid(video: videos)
                }
            }
            .padding(.all)
        }
    }
}

struct VideoInGrid: View {
    
    var video: Video
    
    var body: some View {
        NavigationLink(destination: VideoDetail(video: video))
        {
            VStack {
                VideoPlayer(player: AVPlayer(url:  URL(string: video.source)!))
                Text(video.titel)
                    .font(Font.custom("Andale Mono", size: 18))
                    .foregroundColor(Color("blueiMars"))
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
            }
            .frame(width: 400, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .padding(.bottom)
        }
    }
}

struct VideoGrid_Previews: PreviewProvider {
    static var previews: some View {
        Landscape {
            VideoGrid(video: Video.data)
                .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        }
    }
}
