//
//  CategoryRow.swift
//  Test
//
//  Created by ifechukwu daniel; on 03/07/2021.
//

import SwiftUI

struct CategoryRow: View {
    var cartegoryName:String
    var items: [Landmark]
    var body: some View {
        VStack(alignment:.leading){
            Text(cartegoryName)
                .font(.headline)
                .padding(.leading , 15)
                .padding(.top , 5)
        
            ScrollView(.horizontal, showsIndicators:false){
                HStack(alignment: .top, spacing: 0){
                    ForEach(items){ landmark in
                        NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                            CategoryItem(landmark: landmark)
                        }
                    }
                }
                
            }
            .frame(height: 185)
        }
        
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static let landmarks :[Landmark] = ModelData.init().landmarks
    static var previews: some View {
        CategoryRow(
            cartegoryName: landmarks[0].category.rawValue,
            items: Array(landmarks.prefix(4))
        )
    }
}
