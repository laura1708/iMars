//
//  BibliLauraModel.swift
//  iMars
//
//  Created by Laura on 17/03/2021.
//
import SwiftUI
import Foundation

extension Color {
    static let colorBlue = Color("blueImars")
    static let colorRed = Color("redImars")
    static let colorBlack = Color("blackImars")
    static let colorWhite = Color("whiteImars")
}

struct Data : Identifiable{
    var id = UUID()
    let image : String
    let title : String
    let icone : String
    let tag : Tag
}

let Datas = [

    Data(image: "sara seager", title: "Conférence 2018", icone: "person.fill", tag: Tag.conference
),
    Data(image: "sara seager", title: "son de Mars", icone: "speaker.wave.2.fill", tag: Tag.son
),
    Data(image: "sara seager", title: "Vidéo de lancement", icone: "play.circle.fill", tag: Tag.video
),
    Data(image: "sara seager", title: "photo Olympe", icone: "photo", tag: Tag.photo
),

]
