//
//  AnimalModel.swift
//  Africa
//
//  Created by Yurii Sameliuk on 29/12/2020.
//

import SwiftUI

struct AnimalModel: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
