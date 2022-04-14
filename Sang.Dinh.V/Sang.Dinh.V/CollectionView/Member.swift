//
//  File.swift
//  Sang.Dinh.V
//
//  Created by Rin Sang on 12/04/2022.
//

import Foundation
import UIKit

struct Member {
    let name: String
    let avatar: UIImage
}
enum Team: Int {
    case avengers
    case guardians
    case xmen
    
    var teamName: String{
        switch self {
        case .avengers:
            return "Avengers"
        case .guardians:
            return "Guardians of thê galaxy"
        case .xmen:
            return "X-men"
        }
    }
    var taemAvatar: UIImage {
        switch self {
        case .avengers:
            return #imageLiteral(resourceName: "avengers")

        case .guardians:
            return #imageLiteral(resourceName: "galaxy")

        case .xmen:
            return #imageLiteral(resourceName: "x-men")
        }
    }
    var members: [Member]{
        switch self {
        case .avengers: return [Member(name: "Thor", avatar: #imageLiteral(resourceName: "thor")),
                                Member(name: "Captain America", avatar: #imageLiteral(resourceName: "captain-america")),
                                Member(name: "Iron Man", avatar: #imageLiteral(resourceName: "iron-man")),
                                Member(name: "Black Widow", avatar: #imageLiteral(resourceName: "black-widow")),
                                Member(name: "Spider Man", avatar: #imageLiteral(resourceName: "spider-man")),
                                Member(name: "Doctor Strange", avatar: #imageLiteral(resourceName: "doctor"))]
        case .guardians: return [Member(name: "Star lord", avatar: #imageLiteral(resourceName: "star")),
                                 Member(name: "Rocket racoon", avatar: #imageLiteral(resourceName: "rocket")),
                                 Member(name: "Gamora", avatar: #imageLiteral(resourceName: "gara")),
                                 Member(name: "Drax", avatar: #imageLiteral(resourceName: "jaguar"))]
        case .xmen: return [Member(name: "Storm", avatar: #imageLiteral(resourceName: "drag-king")),
                            Member(name: "Beast", avatar: #imageLiteral(resourceName: "marker-storm")),
                            Member(name: "Wolverine", avatar: #imageLiteral(resourceName: "wolverine")),]
        }
    }
    static var count: Int {return Team.xmen.hashValue + 1}
}
