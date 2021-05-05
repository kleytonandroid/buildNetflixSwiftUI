//
//  GlobalHelpers.swift
//  BuildNetflix
//
//  Created by Kleyton Santos on 30/04/21.
//

import Foundation
import SwiftUI

let exampleMovie1 = Movie(id: UUID().uuidString, name: "DARK", thumbnailURL: URL(string: "https://picsum.photos/200/300")!, categories: ["Dystopinan", "Exciting", "Suspenseful", "Sci-Fi TV"], year: 2020, rating: "TV-MA", numberOfSeasons: 1, isHD: true)
let exampleMovie2 = Movie(id: UUID().uuidString, name: "The big bang theory", thumbnailURL: URL(string: "https://picsum.photos/200/301")!, categories: ["Dystopinan", "Exciting", "Suspenseful", "Sci-Fi TV"], year: 2020, rating: "TV-MA", numberOfSeasons: 2, isHD: true, promotionHeadline: "Best Rated Show")
let exampleMovie3 = Movie(id: UUID().uuidString, name: "Big brother Brasil", thumbnailURL: URL(string: "https://picsum.photos/200/302")!, categories: ["Dystopinan", "Exciting", "Suspenseful", "Sci-Fi TV"], year: 2020, rating: "TV-MA", numberOfSeasons: 3, isHD: true)
let exampleMovie4 = Movie(id: UUID().uuidString, name: "Alone", thumbnailURL: URL(string: "https://picsum.photos/200/303")!, categories: ["Dystopinan", "Exciting", "Suspenseful", "Sci-Fi TV"], year: 2020, rating: "TV-MA", numberOfSeasons: 4, isHD: true)
let exampleMovie5 = Movie(id: UUID().uuidString, name: "After life", thumbnailURL: URL(string: "https://picsum.photos/200/304")!, categories: ["Dystopinan", "Exciting", "Suspenseful", "Sci-Fi TV"], year: 2020, rating: "TV-MA", numberOfSeasons: 5, isHD: true, promotionHeadline: "New episodes comming soon")
let exampleMovie6 = Movie(id: UUID().uuidString, name: "Naruto", thumbnailURL: URL(string: "https://picsum.photos/200/305")!, categories: ["Dystopinan", "Exciting", "Suspenseful", "Sci-Fi TV"], year: 2020, rating: "TV-MA", numberOfSeasons: 6, isHD: false)

let exampleMovies = [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6]


extension LinearGradient {
    static let balckOpacityGradient = LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]), startPoint: .top, endPoint: .bottom)
}
