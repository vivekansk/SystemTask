//
//  FamilyHome.swift
//  Botanica
//
//  Created by Krishna Vivek on 24/03/22.
//

import SwiftUI

struct FamilyHome: View {
    @EnvironmentObject var modelData: ModelData

    var body: some View {
        NavigationView {
            List {
                
                modelData.features[0].image
                                 .resizable()
                                 .scaledToFill()
                                 .frame(height: 200)
                                 .clipped()
                                 .listRowInsets(EdgeInsets())
                
                ForEach(modelData.families.keys.sorted(), id: \.self) { key in
                    FamilyRow(familyName: key, items: modelData.families[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .navigationTitle("Home")
        }
    }
}

struct FamilyHome_Previews: PreviewProvider {
    static var previews: some View {
        FamilyHome()
            .environmentObject(ModelData())
    }
}

