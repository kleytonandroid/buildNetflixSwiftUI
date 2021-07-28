//
//  GlobalHelpers.swift
//  BuildNetflix
//
//  Created by Kleyton Santos on 30/04/21.
//

import Foundation
import SwiftUI

let exampleMovie1 = Movie(id: UUID().uuidString,
                          name: "DARK",
                          thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
                          categories: ["Dystopinan", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasons: 1,
                          isHD: true,
                          defaultEpisodeInfo: exampleEpisodeInfo1, creators: "Baran bo Odan, Jantje Friese",
                          cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
                          moreLikeThisMovies: [exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6, exampleMovie7].shuffled())

let exampleMovie2 = Movie(id: UUID().uuidString,
                          name: "The big bang theory", thumbnailURL: URL(string: "https://picsum.photos/200/301")!,
                          categories: ["Dystopinan", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020, rating: "TV-MA",
                          numberOfSeasons: 2,
                          isHD: true,
                          promotionHeadline: "Best Rated Show",
                          defaultEpisodeInfo: exampleEpisodeInfo1, creators: "Baran bo Odan, Jantje Friese",
                          cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
                          moreLikeThisMovies: [])

let exampleMovie3 = Movie(id: UUID().uuidString,
                          name: "Big brother Brasil",
                          thumbnailURL: URL(string: "https://picsum.photos/200/302")!,
                          categories: ["Dystopinan", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasons: 3,
                          isHD: true,
                          defaultEpisodeInfo: exampleEpisodeInfo1, creators: "Baran bo Odan, Jantje Friese",
                          cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
                          moreLikeThisMovies: [])

let exampleMovie4 = Movie(id: UUID().uuidString,
                          name: "Alone",
                          thumbnailURL: URL(string: "https://picsum.photos/200/303")!,
                          categories: ["Dystopinan", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasons: 4,
                          isHD: true,
                          defaultEpisodeInfo: exampleEpisodeInfo1, creators: "Baran bo Odan, Jantje Friese",
                          cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
                          moreLikeThisMovies: [])

let exampleMovie5 = Movie(id: UUID().uuidString,
                          name: "After life",
                          thumbnailURL: URL(string: "https://picsum.photos/200/304")!,
                          categories: ["Dystopinan", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020, rating: "TV-MA",
                          numberOfSeasons: 5,
                          isHD: true,
                          promotionHeadline: "New episodes comming soon",
                          defaultEpisodeInfo: exampleEpisodeInfo1, creators: "Baran bo Odan, Jantje Friese",
                          cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
                          moreLikeThisMovies: [])

let exampleMovie6 = Movie(id: UUID().uuidString,
                          name: "Naruto",
                          thumbnailURL: URL(string: "https://picsum.photos/200/305")!,
                          categories: ["Dystopinan", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasons: 6,
                          isHD: false,
                          defaultEpisodeInfo: exampleEpisodeInfo1, creators: "Baran bo Odan, Jantje Friese",
                          cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
                          moreLikeThisMovies: [])

let exampleMovie7 = Movie(id: UUID().uuidString,
                          name: "Naruto",
                          thumbnailURL: URL(string: "https://picsum.photos/200/305")!,
                          categories: ["Dystopinan", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasons: 6,
                          isHD: false,
                          defaultEpisodeInfo: exampleEpisodeInfo1, creators: "Baran bo Odan, Jantje Friese",
                          cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
                          moreLikeThisMovies: [])



var exampleMovies: [Movie] {
    return [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6].shuffled()
}

let exampleEpisodeInfo1 = CurrentEpisodeInfo(episodeName: "Endings and Beginnings",
                                             desciption: "On the day of the apocalypse, Clausen executes a search warrant at the power plant as Jonas and Claudia use the time machine to connect past and future",
                                             season: 2,
                                             episode: 8)

extension LinearGradient {
    static let balckOpacityGradient = LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]), startPoint: .top, endPoint: .bottom)
}

extension String {
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
}
