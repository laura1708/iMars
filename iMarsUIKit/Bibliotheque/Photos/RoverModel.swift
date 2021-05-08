//
//  RoverModel.swift
//  iMarsUIKit
//
//  Created by Mariia Zhurina on 22/03/2021.
//

import Foundation

struct RoverAPI {
    static func fetch(completionHandler: @escaping ((RoverRoot) -> Void)) {
        let url = URL(string: "https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?api_key=4vkYCyclqRrpiWi0R9aBWcXrx37ECRIfnIQ1YeAj&sol=15")!
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data, error == nil {
                let decoder = JSONDecoder()
                do {
                    let RoverCollection = try decoder.decode(RoverRoot.self,
                                                             from: data)
                    completionHandler(RoverCollection)
                } catch let error {
                    print("Error while decodiong json: \(error.localizedDescription)")
                }
            }
        }
        task.resume()
    }
}
