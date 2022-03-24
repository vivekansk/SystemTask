//
//  VocabularyRow.swift
//  Botanica
//
//  Created by Krishna Vivek on 24/03/22.
//

import SwiftUI

struct VocabularyRow: View {
    var vocabulary: Vocabulary
    
    var body: some View {
        HStack {
            Text(vocabulary.label)
                    .padding(.horizontal)
            Spacer()
        }
    }
}

struct VocabularyRow_Previews: PreviewProvider {
    static var vocabularies = ModelData().vocabularies
    
    static var previews: some View {
        Group {
            VocabularyRow(vocabulary: vocabularies[0])
            VocabularyRow(vocabulary: vocabularies[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}

