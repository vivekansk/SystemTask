//
//  PlantRow.swift
//  Botanica
//
//  Created by Krishna Vivek on 24/03/22.
//

import SwiftUI

struct PlantRow: View {
    var plant: Plant
    
    var body: some View {
        HStack {
                 plant.image
                     .resizable()
                     .frame(width: 50, height: 50)
                 Text(plant.latin_name)

                 Spacer()
            
                if plant.isFavourite {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                }
             }
    }
}

struct PlantRow_Previews: PreviewProvider {
    static var plants = ModelData().plants
    
    static var previews: some View {
        Group {
            PlantRow(plant: plants[0])
            PlantRow(plant: plants[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}

