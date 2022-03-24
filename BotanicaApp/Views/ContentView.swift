//
//  ContentView.swift
//  Botanica
//
//  Created by Krishna Vivek on 24/03/22.
//

import SwiftUI

struct ContentView: View {
    @State private var selection : Tab = .home

    enum Tab {
        case plants
        case home
        case vocabularies
    }
    
    var body: some View {
        TabView(selection: $selection) {
            PlantList()
                .tabItem {
                    Label("Plants", systemImage: "leaf.circle.fill")
                }
                .tag(Tab.plants)
            
            FamilyHome()
                .tabItem {
                    Label("Families", systemImage: "leaf.arrow.triangle.circlepath")
                }
                .tag(Tab.home)
            
            VocabularyList()
                .tabItem {
                    Label("Vocabulary", systemImage: "books.vertical.circle.fill")
                }
                .tag(Tab.vocabularies)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView().environmentObject(ModelData()).previewInterfaceOrientation(.portraitUpsideDown)
        }
    }
}

