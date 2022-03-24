//
//  FamilyRow.swift
//  Botanica
//
//  Created by Krishna Vivek on 24/03/22.
//

import SwiftUI

struct FamilyRow: View {
    var familyName: String
    var items: [Plant]
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text(familyName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { plant in
                        NavigationLink {
                            PlantDetail(plant: plant)
                        } label: {
                            FamilyItem(plant: plant)
                        }
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

struct FamilyRow_Previews: PreviewProvider {
    static var plants = ModelData().plants
    
    static var previews: some View {
        FamilyRow(
            familyName: plants[0].family.rawValue,
            items: Array(plants.prefix(3))
        )
    }
}

