//
//  MovieDetail.swift
//  BuildNetflix
//
//  Created by Kleyton Santos on 04/05/21.
//

import SwiftUI
import Kingfisher

struct MovieDetail: View {
    var movie: Movie
    
    var screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Spacer()
                    Button(action: {}, label: {
                        Image(systemName: "xmark.circle").font(.system(size: 28))
                    })
                    
                }.padding(.horizontal, 22)
                .foregroundColor(.white)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        StandardHomeMovie(movie: movie)
                            .frame(width: screen.width / 2.5)
                        MovieInfoSubheadline(movie: movie)
                        
                        if let promotion = movie.promotionHeadline {
                            Text(promotion)
                                .font(.headline)
                                .bold()
                        }
                        
                        PrimaryButton(text: "Play", imageName: "play.fill", backgroundColor: .red, foregroundColor: .white, action: {})
                        
                        CurrentEpisodeInformation(movie: movie)
                        
                        HStack {
                            Text(movie.episodeDescriptionDisplay)
                                .font(.subheadline)
                            Spacer()
                        }
                        
                        CastInfo(movie: movie)
                        
                        HStack(spacing: 60) {
                            SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true, action: {})
                            SmallVerticalButton(text: "Rate", isOnImage: "hand.thumbsup.fill", isOffImage: "hand.thumbsup", isOn: true, action: {})
                            SmallVerticalButton(text: "Share", isOnImage: "square.and.arrow.up", isOffImage: "square.and.arrow.up", isOn: true, action: {})
                            Spacer()
                        }.padding(.leading, 20)
                        
//                        CustomTabSwitcher(tabs: [.episodes, .trailers, .more], movie: movie)
                        
                    }.padding(.horizontal, 10)
                }
                Spacer()
            }.foregroundColor(.white)
        }
        
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: exampleMovie5)
    }
}

struct MovieInfoSubheadline: View {
    
    var movie: Movie
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            
            Text(String(movie.year))
            
            RatingView(rating: movie.rating)
            
            Text(movie.numberOfSeasonsDisplay)
            
            if movie.isHD {
                HDView()
            }
        }.foregroundColor(.gray)
        .padding(.vertical, 6)
    }
}

struct RatingView: View {
    
    var rating: String
    
    var body: some View {
        ZStack {
            Rectangle()
            
            Text(rating)
                .foregroundColor(.white)
                .font(.system(size: 12))
                .bold()
            
        }.frame(width: 50, height: 20)
    }
}

struct HDView: View {
    var body: some View {
        ZStack {
            Rectangle()
            Text("HD")
                .foregroundColor(.gray)
                .font(.system(size: 12))
                .bold()
            
        }.frame(width: 30, height: 20)
        .foregroundColor(.black)
        .border(Color.gray, width: 1)
        .cornerRadius(2.0)
    }
}

struct CurrentEpisodeInformation: View {
    var movie: Movie
    
    var body: some View {
        HStack {
            Text(movie.episodeInfoDisplay)
                .bold()
            Spacer()
        }.padding(.vertical, 6)
    }
}

struct CastInfo: View {
    var movie: Movie
    
    var body: some View {
        VStack(spacing: 3) {
            HStack {
                Text("Cast: \(movie.cast)")
                Spacer()
            }
            HStack {
                Text("Creators: \(movie.creators)")
                    .font(.subheadline)
                Spacer()
            }
        }
        .font(.caption)
        .foregroundColor(.gray)
        .padding(.vertical, 10)
    }
}
