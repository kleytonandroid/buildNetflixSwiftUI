//
//  HomeVM.swift
//  BuildNetflix
//
//  Created by Kleyton Santos on 30/04/21.
//

import Foundation
class HomeVM: ObservableObject {
    
    // String == Category
    @Published var movies: [String: [Movie]] = [:]
    
    public var allCategories: [String] {
        movies.keys.map({ String($0)})
    }
    
    public func getMovie(for category: String) -> [Movie] {
        movies [category] ?? []
    }
    
    init() {
        setupMovies()
    }
    
    func setupMovies() {
        movies["Trading Now"] = exampleMovies.shuffled()
        movies["Stand-up comedy"] = exampleMovies.shuffled()
        movies["New releses"] = exampleMovies.shuffled()
        movies["SCI"] = exampleMovies.shuffled()
        movies["Horror"] = exampleMovies.shuffled()
        movies["Action"] = exampleMovies.shuffled()
    }
    
}
