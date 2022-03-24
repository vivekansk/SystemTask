//
//  Vocabulary.swift
//  Botanica
//
//  Created by Krishna Vivek on 24/03/22.
//

import Foundation

struct Vocabulary: Hashable, Codable, Identifiable {
    var id: Int
    var label: String
    var description: String
}
