//
//  DetailViewArticle.swift
//  iMarsUIKit
//
//  Created by Laura on 18/03/2021.
//

import SwiftUI



struct DetailViewArticle: View {
    let article: Article
    
    var btnShare: some View{
        Button(action: {
            let av = UIActivityViewController(activityItems: ["iMars"], applicationActivities: nil)
            UIApplication.shared.windows.first?.rootViewController?.present(av, animated: true, completion: nil)
        }, label: {
            Image(systemName: "square.and.arrow.up")
                .foregroundColor(Color.blue)
                .font(.title)
            
        }
        )
    }
    
    var body: some View {
        ScrollView   {
            VStack {
                Image(article.photo)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth : 1150, maxHeight: 650)
                    .cornerRadius(5.0)
                HStack {
                    Text(article.source)
                        .foregroundColor(Color("rediMars"))
                        .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/)
                    Spacer()
                    
                    Text(article.date)
                        .foregroundColor(Color("rediMars"))
                        .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/)
                }
                Text(article.titre)
                    .fontWeight(.medium)
                    .foregroundColor(Color("blueiMars"))
                    .multilineTextAlignment(.center)
                    .font(.custom("Andale Mono", size: 30))
                
                Text(article.contenu)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .font(.custom("SF Compact", size: 17))
            }
        }
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        .navigationBarItems(trailing: Button(action: {
            print("Share")
        }, label: {
            Image(systemName: "square.and.arrow.up")
                .foregroundColor(Color(UIColor(named: "rediMars")!))
        }))
    }
}


struct DetailViewArticle_Previews: PreviewProvider {
    static var previews: some View {
        
        Landscape {
            DetailViewArticle(article: Article.data[0])
            
        }
    }
}
