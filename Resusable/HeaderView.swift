//
//  HeaderView.swift
//  Botanica
//
//  Created by Krishna Vivek on 24/03/22.
//

import SwiftUI

struct HeaderView: View {
    var name: String
    
    var body: some View {
        Color.green
            .overlay(
                VStack() {
                    Text(name)
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .offset(y: -45)
                        .padding(.bottom, -10)
                }
            )
            .ignoresSafeArea()
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(name: "Title")
    }
}
