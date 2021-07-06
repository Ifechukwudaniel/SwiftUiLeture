//
//  Proflle.swift
//  Test
//
//  Created by ifechukwu daniel; on 05/07/2021.
//

import Foundation

struct Profile {
    var username: String
    var prefixNotification: Bool =  false
    var seasonalPhoto = Season.winter
    var goalDate = Date()

    static let `default` = Profile(username: "g_kumar")
    
    
    enum Season:String , CaseIterable , Identifiable {
        var id: String { self.rawValue}
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
    }
    
}
