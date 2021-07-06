//
//  CategoryHome.swift
//  Test
//
//  Created by ifechukwu daniel; on 03/07/2021.
//

import SwiftUI

struct CategoryHome: View {
    @EnvironmentObject var modelData :ModelData
    @State private var showingProfile  = false
    var body: some View {
        NavigationView {
            List {
                modelData.features[0].img
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                ForEach(modelData.categories.keys.sorted(), id:\.self){ key in
                    CategoryRow(cartegoryName: key, items: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
                
            }
            .listStyle(InsetListStyle())
            .navigationTitle("Featured")
            .toolbar {
                Button(action: { showingProfile.toggle() }) {
                    Image(systemName: "person.crop.circle")
                        .accessibilityLabel("User Profile")
                }
            }
            .sheet(isPresented: $showingProfile){
                 ProfileHost()
                    .environmentObject(modelData)
            }
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}
