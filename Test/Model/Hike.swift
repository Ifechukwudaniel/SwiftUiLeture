//
//  Hike.swift
//  Test
//
//  Created by ifechukwu daniel; on 03/07/2021.
//

import Foundation

struct Hike : Codable,Hashable, Identifiable  {
    var name :String
    var id : Int
    var distance:Double
    var difficulty : Int
    var  observations: [Observation]
    
    static var formatter = LengthFormatter()

    var distanceText: String {
        return Hike.formatter
            .string(fromValue: distance, unit: .kilometer)
    }
    
    struct  Observation:Codable, Hashable {
        var distanceFromStart:Double
        var heartRate:Range<Double>
        var elevation:Range<Double>
        var pace:Range<Double>
    }
    
}

