//
//  PhotoAPI.swift
//  iMarsUIKit
//
//  Created by Mariia Zhurina on 18/03/2021.
//

import Foundation

struct PhotoAPI {
    static func fetch(completionHandler: @escaping ((PhotoRoot) -> Void)) {
        let url = URL(string: "https://images-api.nasa.gov/search?q=mars")!
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data, error == nil {
                let decoder = JSONDecoder()
                do {
                    let photoCollection = try decoder.decode(PhotoRoot.self,
                                                             from: data)
                    completionHandler(photoCollection)
                } catch let error {
                    print("Error while decodiong json: \(error.localizedDescription)")
                }
            }
        }
        task.resume()
    }
}
