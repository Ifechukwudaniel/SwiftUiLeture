//
//  LandmarkDetail.swift
//  Test
//
//  Created by ifechukwu daniel; on 03/07/2021.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var modelData:ModelData
    var landmark :Landmark
    
    var  landmarkIndex:Int {
        modelData.landmarks.firstIndex(where: {$0.id == landmark.id})!
    }
    
    
    var body: some View {
         ScrollView{
            MapView(coordinates:landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
                        
            CircleImage(image: landmark.img)
                .offset(y:-130)
                .padding(.bottom ,-160)
            
            VStack(alignment:.leading) {
                HStack{
                    Text(landmark.name)
                        .font(.title)
                        .foregroundColor(.primary)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
                .padding(.top, 10)
                
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
                     .font(.subheadline)
                     .foregroundColor(.secondary)
                
                
                Divider()
                Text("About \(landmark.name)")
                        .font(.title2)
                Text(landmark.description)
                    .font(.body)
                    .padding(.top, 10)
                
            }
            .padding()
            
        }
         .navigationTitle(landmark.name)
         .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    static var previews: some View {
        LandmarkDetail(landmark:modelData.landmarks[0])
            .environmentObject(modelData)
    }
}
