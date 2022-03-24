//
//  PlantDetail.swift
//  Botanica
//
//  Created by Krishna Vivek on 24/03/22.
//

import SwiftUI

struct PlantDetail: View {
    @EnvironmentObject var modelData: ModelData
    var plant: Plant
    
    var plantIndex: Int {
          modelData.plants.firstIndex(where: { $0.id == plant.id })!
      }

    var body: some View {
        ScrollView {
            HeaderView(name: plant.latin_name)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)

            CircularImage(image: plant.image)
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                HStack {
                    Text(plant.latin_name)
                        .font(.title)
                    FavouriteButton(isSet: $modelData.plants[plantIndex].isFavourite)
                }
                
                HStack {
                    Text(plant.french_name)
                    Spacer()
                    Text(plant.family.rawValue)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About \(plant.french_name)")
                    .font(.title2)
                Text(plant.description)
            }
            .padding(.horizontal, 50.0)
        }
        //        .navigationTitle(plant.latin_name)
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct PlantDetail_Previews: PreviewProvider {
    static var previews: some View {
        PlantDetail(plant: ModelData().plants[0])
    }
}

