//
//  AlbumModel.swift
//  Starter Project
//
//  Created by Abdelhamid Nasser on 28/03/2023.
//

import Foundation


// MARK: - AlbumModel
/// Album model retrieved from the server-side
struct AlbumModel: Codable {
    let id: String?
    let width: Int?
    let height: Int?
    let urls: Urls
    
    init(id: String? = nil, width: Int? = nil, height: Int? = nil, urls: Urls) {
        self.id = id
        self.width = width
        self.height = height
        self.urls = urls
    }
}


// MARK: - Urls
/// Urls class which has the various sizes of the image
struct Urls: Codable {
    let raw, full, small, thumb, smallS3: String?
    let regular: String
    
    init(raw: String? = nil, full: String? = nil, small: String? = nil, thumb: String? = nil, smallS3: String? = nil, regular: String) {
        self.raw = raw
        self.full = full
        self.small = small
        self.thumb = thumb
        self.smallS3 = smallS3
        self.regular = regular
    }
    
    enum CodingKeys: String, CodingKey {
        case raw, full, regular, small, thumb
        case smallS3 = "small_s3"
    }
}

