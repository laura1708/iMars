//
//  ModelPOD.swift
//  iMarsUIKit
//
//  Created by Mariia Zhurina on 22/03/2021.
//

import Foundation

struct PodAPI {
    static func fetch(completionHandler: @escaping ((PODData) -> Void)) {
        let url = URL(string: "https://api.nasa.gov/planetary/apod?api_key=4vkYCyclqRrpiWi0R9aBWcXrx37ECRIfnIQ1YeAj")!
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data, error == nil {
                let decoder = JSONDecoder()
                do {
                    let PODCollection = try decoder.decode(PODData.self,
                                                             from: data)
                    completionHandler(PODCollection)
                } catch let error {
                    print("Error while decodiong json: \(error.localizedDescription)")
                }
            }
        }
        task.resume()
    }
}
