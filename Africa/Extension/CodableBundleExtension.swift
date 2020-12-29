//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Yurii Sameliuk on 25/12/2020.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        // 1 locate the JSON file in the app bundle
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Faild to locate \(file) in bundle")
        }
        // 2 create a property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle")
        }
        // 3 create a JSON decoder
        let decoder = JSONDecoder()
        // 4 decode the data and collect the information wift a new property
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle")
        }
        // 5 return the ready-to-use use data
        return loaded
    }
}
