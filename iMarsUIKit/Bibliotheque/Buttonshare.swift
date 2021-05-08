//
//  Buttonshare.swift
//  iMarsUIKit
//
//  Created by Laura on 24/03/2021.
//

import SwiftUI

struct aEnvoyer : Identifiable{
    
    var id = UUID()
    let contenu : String
    let titre : String
    
}

var btnShare : some View {
    Button(action: {
        let av = UIActivityViewController(activityItems: ["iMars"], applicationActivities: nil)
        UIApplication.shared.windows.first?.rootViewController?.present(av, animated: true, completion: nil)
    }, label: {
        Image(systemName: "square.and.arrow.up")
            .foregroundColor(Color.colorBlue)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
    }
    )
}
//    var body: some View

//struct Buttonshare_Previews: PreviewProvider {
//    static var previews: some View {
//        Buttonshare()
//    }
//}



