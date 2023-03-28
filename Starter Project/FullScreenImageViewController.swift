//
//  FullScreenImageViewController.swift
//  Starter Project
//
//  Created by Abdelhamid Nasser on 29/03/2023.
//

import UIKit

class FullScreenImageViewController: UIViewController {
    
    /// full screen image of the selected album
    @IBOutlet private weak var albumImageView: UIImageView!
    
    var imageUrl: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let url = URL(string: imageUrl ?? "") else {
            return
        }
        albumImageView.load(url: url)
    }
    
}
