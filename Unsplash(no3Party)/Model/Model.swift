//
//  Model.swift
//  Unsplash(no3Party)
//
//  Created by Mac on 23.01.2023.
//

import Foundation

struct Photo: Identifiable, Decodable, Hashable {
    
    var id: String
    var urls: [String : String]
    
}

struct SearchPhoto: Decodable {
    
    var results: [Photo]
    
}
