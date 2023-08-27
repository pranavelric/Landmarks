//
//  Profile.swift
//  Landmark
//
//  Created by Pranav Choudhary on 27/08/23.
//

import Foundation
struct Profile{
    var username: String
    var prefersNotification = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(username: "pranav_elric")
    
    enum Season: String, CaseIterable, Identifiable{
      case spring = "🌷"
      case summer = "🌞"
      case autumn = "🍂"
      case winter = "☃️"


      var id: String { rawValue }
    }
    
    
}
