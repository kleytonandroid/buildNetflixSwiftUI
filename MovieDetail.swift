//
//  MovieDetail.swift
//  BuildNetflix
//
//  Created by Kleyton Santos on 04/05/21.
//

import SwiftUI

struct MovieDetail: View {
    var movie: Movie
    
    var screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "xmark.circle").font(.system(size: 28))
                    })
                    
                }.padding(.horizontal, 22)
                .foregroundColor(.white)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        StandardHomeMovie(movie: movie)
                            .frame(width: screen.width / 2.5)
                        MovieInfoSubheadline(movie: movie)
                        
                    }
                }
                
                
            }
        }
        
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: exampleMovie4)
    }
}

struct MovieInfoSubheadline: View {
    
    var movie: Movie
    
    var body: some View {
        HStack {
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            
            Text("MOVIE YEAR")
            
            Text("RATING")
            
            Text("SEASON")
        }.foregroundColor(.gray)
        .padding(.vertical, 6)
    }
}
