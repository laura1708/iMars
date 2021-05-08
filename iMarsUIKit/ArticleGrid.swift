//
//  ArticleList.swift
//  iMarsUIKit
//
//  Created by Lyes BOUKBOUKA on 23/03/2021.
//
import SwiftUI

struct ArticleGrid: View {
    
var hGridLayout = [
    GridItem(.adaptive(minimum: 300, maximum: 300))
    ]

    var article = Article.data

    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: hGridLayout) {
                ForEach(article) { article in
                    ArticleInGrid(article: article)
                }
            }
            .padding(.leading)
        }
    }
}
struct ArticleInGrid: View {
    var article: Article

    var body: some View {
        NavigationLink(destination: DetailViewArticle(article: article))
        {
             
            VStack(alignment: .leading) {
                    Image(article.photo)
                        .resizable()
                        
//                        .scaledToFit()
                        .frame(width: 400, height: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .aspectRatio(contentMode: .fill)
                        .clipped()
                
                        
                    Spacer()
                    Text(article.titre)
                        .font(Font.custom("Andale Mono", size: 18))
                        .foregroundColor(Color("blueiMars"))
                    
                }
            }
            .frame(width: 400, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
    }


struct ArticleGrid_Previews: PreviewProvider {
    static var previews: some View {
        Landscape {
            ArticleGrid(article: Article.data)
                .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        }
    }
    
}
