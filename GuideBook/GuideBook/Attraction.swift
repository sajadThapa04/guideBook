//
//  Attraction.swift
//  GuideBook
//
//  Created by Sajad Thapa on 27/8/2023.
//

import Foundation

struct Attraction:Identifiable,Decodable {
    let id:UUID = UUID()
    var name: String
    var summary:String
    var longDescription:String
    var imageName:String
    var latLong:String
}
