//
//  SavedView.swift
//  iMars
//
//  Created by Mariia Zhurina on 18/03/2021.
//

import SwiftUI

struct SavedView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Crédits :\n")
                .font(Font.custom("Andale Mono", size: 25))
                .foregroundColor(Color("blueiMars"))
            Spacer()
            Text("The app is written by Mariia, Laura, Catherine, Lyes and Kevin.\n\nA huge thanks to the NASA for their free APIs.\n\nSpecial thanks to the Mars Society (MDRS) and OeWF’s analog astronauts for their kindness and availability in answering to our numerous questions.\n\nCoordinates and basic information for Martian terrain features are form the NASA Mars Trek.\n\nFeature descriptions, articles have been edited for readability, with additional content by the program authors.\n\nThe 3D models of Mars and rovers used in this app are based on the NASA 3D models library.\n\nCredit: NASA and all their related websites")
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
            HStack {
                Link("Nasa", destination: URL(string: "https://www.nasa.gov/")!)
                Image("nasalogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35, height: 35)
            }
            Link("Nasa's Mars Exploration Program\n", destination: URL(string: "https://mars.nasa.gov/")!)
            Link("Mars Exploration Rovers\n", destination: URL(string: "https://mars.nasa.gov/mer/")!)
            Link("OEWF\n", destination: URL(string: "https://oewf.org/")!)
            Link("The Mars Society\n", destination: URL(string: "https://www.marssociety.org/")!)
            Link("Mars trek\n", destination: URL(string: "https://trek.nasa.gov/mars/index.html")!)
        }
        .padding(.all)
        .accentColor(Color("rediMars"))
    }
}

struct SavedView_Previews: PreviewProvider {
    static var previews: some View {
        SavedView()
    }
}
