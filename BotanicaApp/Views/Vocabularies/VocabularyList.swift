//
//  VocabularyList.swift
//  Botanica
//
//  Created by Krishna Vivek on 24/03/22.
//

import SwiftUI

struct VocabularyList: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView {
            List(modelData.vocabularies) { vocabulary in
                NavigationLink {
                    VocabularyDetail(vocabulary: vocabulary)
                    
                }   label: {
                    VocabularyRow(vocabulary: vocabulary)
                }
            }
            .navigationTitle("Vocabulary")
        }
    }
}

struct VocabularyList_Previews: PreviewProvider {
    static var previews: some View {
        VocabularyList()
            .environmentObject(ModelData())
    }
}

