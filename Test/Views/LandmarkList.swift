//
//  LandmarkList.swift
//  Test
//
//  Created by ifechukwu daniel; on 03/07/2021.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List (landmarks, id:\.id) { landmark in
                NavigationLink(destination:LandmarkDetail(landmark: landmark)){
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
      }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
          LandmarkList()
    }
}
