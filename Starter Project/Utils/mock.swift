//
//  mock.swift
//  Starter Project
//
//  Created by Abdelhamid Nasser on 28/03/2023.
//

import Foundation

/// Mock data for the albums list
///
/// shown when retrieval from the server fails
struct MockData {
    
    static let dummyAlbums = [
        AlbumModel(urls: Urls(regular: #"https://images.unsplash.com/photo-1680001660273-2a78887352a2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=Mnw0MjczNTd8MHwxfGFsbHwyfHx8fHx8Mnx8MTY4MDAzMDgwNg&ixlib=rb-4.0.3&q=80&w=1080"#)),
        AlbumModel(urls: Urls(regular: #"https://images.unsplash.com/photo-1680003210401-08fa173ee905?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=Mnw0MjczNTd8MHwxfGFsbHw0fHx8fHx8Mnx8MTY4MDAzMDgwNg&ixlib=rb-4.0.3&q=80&w=1080"#)),
        AlbumModel(urls: Urls(regular: #"https://images.unsplash.com/photo-1679939652241-4679c2125e2f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=Mnw0MjczNTd8MHwxfGFsbHw3fHx8fHx8Mnx8MTY4MDAzMDgwNg&ixlib=rb-4.0.3&q=80&w=1080"#)),
        AlbumModel(urls: Urls(regular: #"https://images.unsplash.com/photo-1679948905560-2c06b21d43c2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=Mnw0MjczNTd8MHwxfGFsbHwxMHx8fHx8fDJ8fDE2ODAwMzA4MDY&ixlib=rb-4.0.3&q=80&w=1080"#)),
    ]
}
