//
//  UIImageViewExtension.swift
//  Starter Project
//
//  Created by Abdelhamid Nasser on 28/03/2023.
//

import UIKit

extension UIImageView {
    
    /// loads the image into the UIImageView using the provided url
    func load(url: URL) {
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}
