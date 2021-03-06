//
//  GraphCapsule.swift
//  Test
//
//  Created by ifechukwu daniel; on 03/07/2021.
//

import SwiftUI
import Foundation



struct GraphCapsule: View {
   
    var index:Int
    var height: CGFloat
    var range: Range<Double>
    var overallRange: Range<Double>
    
    var heightRatio: CGFloat {
        max(CGFloat(magnitude(of: range) / magnitude(of: overallRange)), 0.15)
    }
        
    var offsetRatio: CGFloat {
        CGFloat((range.lowerBound - overallRange.lowerBound) / magnitude(of: overallRange))
    }
    var body: some View {
        Capsule()
            .fill(Color.white)
            .frame(height: height * heightRatio)
            .offset(x: 0, y: height*offsetRatio )
    }
}
struct GraphCapsule_Previews: PreviewProvider {
    static var previews: some View {
            GraphCapsule(index: 0, height: 200, range: 10..<100, overallRange: 0..<100)
        
    }
}
