//
//  PlantList.swift
//  Botanica
//
//  Created by Krishna Vivek on 24/03/22.
//

import SwiftUI

struct PlantList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavouritesOnly = false

    var filteredPlants: [Plant] {
        modelData.plants.filter { plant in
            (!showFavouritesOnly || plant.isFavourite)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavouritesOnly){
                    Text("Favorites")
                }
                
                ForEach(filteredPlants) { plant in
                    NavigationLink {
                        PlantDetail(plant: plant)
                    } label: {
                        PlantRow(plant: plant)
                    }
                }
            }
            .navigationTitle("Plants")
        }
    }
}

struct PlantList_Previews: PreviewProvider {
    static var previews: some View {
        PlantList()
            .environmentObject(ModelData())
    }
}

