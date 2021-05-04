//
//  Movie.swift
//  BuildNetflix
//
//  Created by Kleyton Santos on 30/04/21.
//

import Foundation
struct Movie: Identifiable {
    
    //we can use UUID to generete a new ID every single time
    //= UUID().uuidString
    var id: String
    var name: String
    var thumbnailURL: URL
    
    var categories: [String]
}
