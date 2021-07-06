//
//  LandmarkList.swift
//  Test
//
//  Created by ifechukwu daniel; on 03/07/2021.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData :ModelData
    @State private var showFavoriteOnly = false
    
    var filteredLandmarks :[Landmark] {
        modelData.landmarks.filter{landmak in
            (!showFavoriteOnly || landmak.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List{
                Toggle(isOn: $showFavoriteOnly, label: {
                    Text("Favorites only")
                })
                ForEach (filteredLandmarks) { landmark in
                    NavigationLink(destination:LandmarkDetail(landmark: landmark)){
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
      }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
          LandmarkList()
            .environmentObject(ModelData())
    }
}
