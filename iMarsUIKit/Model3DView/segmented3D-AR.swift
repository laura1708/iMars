//
//  segmented3D-AR.swift
//  iMarsUIKit
//
//  Created by Laura on 24/03/2021.
//

import SwiftUI

struct segmented3D_AR: View {
    
//    var btnShare : some View { Button(action: {
//        let av = UIActivityViewController(activityItems: [espece.title], applicationActivities: nil)
//        UIApplication.shared.windows.first?.rootViewController?.present(av, animated: true, completion: nil)
    

    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = .systemGray2
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor(red: 0.102, green: 0.784, blue: 0.929, alpha: 1)], for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor(red: 0.839, green: 0.318, blue: 0.031, alpha: 1)], for: .normal)
    }
        @State private var favoriteColor = 0

            var body: some View {
                ZStack {
                   
                    
                    switch favoriteColor {
                    
                    case 0:
                        Model3DView(item: Model3D.model[0])
                    case 1:
                        ContentView()
                    default:
                        MarsScreen()
                    
                    }
                    VStack(alignment: .leading) {
                        Picker(selection: $favoriteColor, label: Text("")) {
                            Text("3D").tag(0)
                            Image(systemName: "arkit").tag(1)
                           
                        }
                        .pickerStyle(SegmentedPickerStyle())
                        .frame(width: 150.0, height: 150.0)
                        .offset(x: 490.0, y: -270.0)
                    }
                }
               
                
                    }
            }
        

struct segmented3D_AR_Previews: PreviewProvider {
    static var previews: some View {
        Landscape {
            segmented3D_AR()
                .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        }
    }
}
