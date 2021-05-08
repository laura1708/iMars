//
//  Model3DView.swift
//  iMars
//
//  Created by Lyes BOUKBOUKA on 18/03/2021.
//

import SwiftUI
import SceneKit

struct Model3DView: View {
    let item : Model3D
    @State var model : String = ""
    var scnScene : SCNScene? { SCNScene(named: "\(model)") }
    
    init(item : Model3D) {
        self.item = item
    }
    
    var body: some View {
        VStack{
            ZStack{
                SceneView(scene : scnScene, options: [.autoenablesDefaultLighting, .allowsCameraControl], preferredFramesPerSecond: 60)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/1.45)
                
            }
            
            ScrollView(.horizontal){
                HStack{
                    ForEach(Model3D.model){
                        item in
                        
                        Button(action: {
                            model = item.fileName
                        }, label: {
                            Model3DRaw(item: item)
                        })
                       
                        }
                }
            }.frame(maxHeight: 250)
            //            Spacer()
            
            
        }
        
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        
    }
}


struct Model3DView_Previews: PreviewProvider {
    static var previews: some View {
        Landscape {
            Model3DView(item: Model3D.model[0])
        }
    }
}
