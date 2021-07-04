//
//  ContentView.swift
//  Test
//
//  Created by ifechukwu daniel; on 13/06/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var section:Tab = .featured
    
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        TabView(selection: $section){
             CategoryHome()
                .tabItem {
                    Label("Fetured", systemImage: "star")
                }
                .tag(Tab.featured)
            LandmarkList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
        
//        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
         ContentView()
            .environmentObject(ModelData())
    }
}
