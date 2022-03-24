//
//  VocabularyDetail.swift
//  Botanica
//
//  Created by Krishna Vivek on 24/03/22.
//

import SwiftUI

struct VocabularyDetail: View {
    @EnvironmentObject var modelData: ModelData
    var vocabulary: Vocabulary
    
    var body: some View {
        VStack(alignment: .center) {
            Text(vocabulary.label)
                .font(.title)
            
            Divider()
            
            Text("Définition")
                .font(.title2)
            Text(vocabulary.description)
        }
        .padding()
    }
}

struct VocabularyDetail_Previews: PreviewProvider {
    static var previews: some View {
        VocabularyDetail(vocabulary: ModelData().vocabularies[0])
    }
}

