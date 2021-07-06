//
//  HikeBadge.swift
//  Test
//
//  Created by ifechukwu daniel; on 06/07/2021.
//

import SwiftUI

struct HikeBadge: View {
    var name:String
    
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/) {
             Badge()
                .frame(width: 300, height: 300)
                .scaleEffect(1.0/3.0)
                .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            Text(name)
                .font(.caption)
                .accessibilityLabel("Badge For \(name)")
        }
        
    }
}
 
struct HikeBadge_Previews: PreviewProvider {
    static var previews: some View {
        HikeBadge(name: "Testing ")
    }
}
