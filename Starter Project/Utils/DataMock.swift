//
//  mock.swift
//  Starter Project
//
//  Created by Abdelhamid Nasser on 28/03/2023.
//

import Foundation

/// Contains mocks of models
///
/// used in initial development and when data retrieval fails
struct DataMock {
    
    static let dummyAlbums = [
        AlbumModel(urls: Urls(regular: #"https://images.unsplash.com/photo-1679678691002-cca4ae795169?crop=entropy\u0026cs=tinysrgb\u0026fit=max\u0026fm=jpg\u0026ixid=Mnw0MjczNTd8MXwxfGFsbHwxfHx8fHx8Mnx8MTY4MDAzMDgwNg\u0026ixlib=rb-4.0.3\u0026q=80\u0026w=1080"#)),
        AlbumModel(urls: Urls(regular: #"https://images.unsplash.com/photo-1679941279735-b3b35e8bc476?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=Mnw0MjczNTd8MHwxfGFsbHw4fHx8fHx8Mnx8MTY4MDAzMDgwNg&ixlib=rb-4.0.3&q=80&w=1080"#)),
        AlbumModel(urls: Urls(regular: #"https://images.unsplash.com/photo-1679913155425-e14172174fcc?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=Mnw0MjczNTd8MHwxfGFsbHw5fHx8fHx8Mnx8MTY4MDAzMDgwNg&ixlib=rb-4.0.3&q=80&w=1080"#)),
        AlbumModel(urls: Urls(regular: #"https://images.unsplash.com/photo-1679678691002-cca4ae795169?crop=entropy\u0026cs=tinysrgb\u0026fit=max\u0026fm=jpg\u0026ixid=Mnw0MjczNTd8MXwxfGFsbHwxfHx8fHx8Mnx8MTY4MDAzMDgwNg\u0026ixlib=rb-4.0.3\u0026q=80\u0026w=1080"#)),
    ]
}
