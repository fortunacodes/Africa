//
//  VideoModel.swift
//  Africa
//
//  Created by Jesús  Fortuna on 15/6/23.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed property
    var thumbnail: String {
        "video-\(id)"
    }
}
