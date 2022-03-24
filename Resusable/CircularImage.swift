//
//  CircularImage.swift
//  Botanica
//
//  Created by Krishna Vivek on 24/03/22.
//

import SwiftUI

struct CircularImage: View {
    var image: Image
    
    var body: some View {
        image
        .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 3)
            }
            .shadow(radius: 8)
    }
}

struct CircularImage_Previews: PreviewProvider {
    static var previews: some View {
        CircularImage(image: Image("veronica_chamaedrys"))
    }
}
