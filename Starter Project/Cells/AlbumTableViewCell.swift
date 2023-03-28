//
//  AlbumTableViewCell.swift
//  Starter Project
//
//  Created by Abdelhamid Nasser on 28/03/2023.
//

import UIKit

class AlbumTableViewCell: UITableViewCell {

    @IBOutlet weak var albumImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configure(item: AlbumModel) {
        let imageUrl = item.urls.regular
        guard let url = URL(string: imageUrl) else {
            return
        }
        albumImageView.load(url: url)
    }
    
}
