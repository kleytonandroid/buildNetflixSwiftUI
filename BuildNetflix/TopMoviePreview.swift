//
//  TopMoviePreview.swift
//  BuildNetflix
//
//  Created by Kleyton Santos on 03/05/21.
//

import SwiftUI
import Kingfisher

struct TopMoviePreview: View {
    var movie: Movie
    
    func isCategoryLast(from category: String) -> Bool {
        if let index = movie.categories.firstIndex(of: category) {
            if index + 1 != movie.categories.count {
                return false
            }
        }
        return true
    }
    
    var body: some View {
        ZStack {
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
            VStack {
                Spacer()
                
                HStack {
                    ForEach(movie.categories, id: \.self) { category in
                        Text(category)
                            .font(.footnote)
                        if !isCategoryLast(from: category) {
                            Image(systemName: "circle.fill")
                                .foregroundColor(.blue)
                                .font(.system(size: 3))
                        }
                    }
                }
                
                HStack {
                    Text("My List")
                    
                    Text("Play button")
                    
                    Text("Info button")
                }
            }
        }
        .foregroundColor(.white)
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie: exampleMovie1)
    }
}
