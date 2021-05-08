//
//  PODView.swift
//  iMarsUIKit
//
//  Created by Mariia Zhurina on 19/03/2021.
//
import SwiftUI
import Kingfisher


struct PodView: View {
    @State var item: PODData?
    
    var body: some View {
        if let item = item {
            ScrollView {
                VStack {
                    if let urlString = item.hdurl,
                       let url = URL(string: urlString) {
                        KFImage(url)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(5.0)
                    }
                    Text(item.title ?? "No title")
                        .font(Font.custom("Andale Mono", size: 25))
                        .foregroundColor(Color("blueiMars"))
                    HStack{
                        Text("Image by")
                        Text(item.copyright ?? "no copyright")
                    }
                    .font(Font.custom("SF-Compact", size: 16))
                    .foregroundColor(Color("rediMars"))
                    Text(item.explanation ?? "No description")
                        .padding(.all)
                }
            }
        } else  {
            ProgressView()
                .onAppear(perform: {
                PodAPI.fetch { data in
                    self.item = data
                }
            })
        }
    }
}
