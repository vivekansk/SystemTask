//
//  Plant.swift
//  Botanica
//
//  Created by Krishna Vivek on 24/03/22.
//

import Foundation
import SwiftUI

struct Plant: Hashable, Codable, Identifiable {
    var id: Int
    var latin_name: String
    var french_name: String
    var description: String
    var isFavourite: Bool
    var isFeatured: Bool

    
    var family: Family
    enum Family: String, CaseIterable, Codable {
        case asteraceae = "Asteraceae"
        case adoxaceae = "Adoxaceae"
        case aquifoliaceae = "Aquifoliaceae"
        case apiaceae = "Apiaceae"
        case boraginaceae = "Boraginaceae"
        case brassicaceae = "Brassicaceae"
        case caryophyllaceae = "Caryophyllaceae"
        case cistaceae = "Cistaceae"
        case crassulaceae = "Crassulaceae"
        case cyperaceae = "Cyperaceae"
        case euphorbiaceae = "Euphorbiaceae"
        case geraniaceae = "Geraniaceae"
        case grossulariaceae = "Grossulariaceae"
        case lamiaceae = "Lamiaceae"
        case liliaceae = "Liliaceae"
        case orchidaceae = "Orchidaceae"
        case polypodiaceae = "Polypodiaceae"
        case primulaceae = "Primulaceae"
        case ranunculaceae = "Ranunculaceae"
        case rosaceae = "Rosaceae"
        case violaceae = "Violaceae"
    }
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
}
