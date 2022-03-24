//
//  FamilyItem.swift
//  Botanica
//
//  Created by Krishna Vivek on 24/03/22.
//

import SwiftUI

struct FamilyItem: View {
    var plant: Plant
    
    
    var body: some View {
        VStack(alignment: .leading) {
                   plant.image
                        .renderingMode(.original)
                       .resizable()
                       .frame(width: 155, height: 155)
                       .cornerRadius(5)
                   Text(plant.latin_name)
                        .foregroundColor(.primary)
                       .font(.caption)
               }
               .padding(.leading, 15)
    }
}

struct FamilyItem_Previews: PreviewProvider {
    static var previews: some View {
        FamilyItem(plant: ModelData().plants[0])
    }
}
