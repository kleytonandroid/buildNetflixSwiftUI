//
//  Trailer.swift
//  BuildNetflix
//
//  Created by Kleyton Santos on 28/07/21.
//

import Foundation

struct Trailer: Identifiable, Hashable {
    var id: String = UUID().uuidString
    var name: String
    var videoURL: URL
    var thumbnailImageURL: URL
}
