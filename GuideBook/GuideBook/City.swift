//
//  City.swift
//  GuideBook
//
//  Created by Sajad Thapa on 27/8/2023.
//

import Foundation

struct City:Identifiable,Decodable {
    let id:UUID = UUID()
    var name:String
    var summary:String
    var imageName:String
    
    var attractions: [Attraction]
}


