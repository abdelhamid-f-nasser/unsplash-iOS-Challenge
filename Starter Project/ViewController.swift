//
//  ViewController.swift
//  Starter Project
//
//  Created by Ahmed M. Hassan on 26/03/2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet private weak var albumsTableView: UITableView!
    
    var albumsList: [AlbumModel] = []
    
    let albumCellId = "AlbumTableViewCell"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        retrievePictures()
        albumsTableView.register(UINib(nibName: albumCellId, bundle: nil), forCellReuseIdentifier: albumCellId)
        albumsTableView.delegate = self
        albumsTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        albumsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = albumsTableView.dequeueReusableCell(withIdentifier: albumCellId, for: indexPath) as! AlbumTableViewCell
        
        let album = albumsList[indexPath.row]
        
        cell.configure(item: album)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        debugPrint("clicked Row: \(indexPath.row)")
    }
    
    func retrievePictures() {
        self.albumsList = DataMock.dummyAlbums
        debugPrint("loaded pictures succcessfully from mock")
    }
}
