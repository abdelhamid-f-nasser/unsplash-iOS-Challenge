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
        retrievePictures {
            
            print("Success loading the albums")
            self.albumsTableView.reloadData()
        } onFailure: {
            self.albumsTableView.reloadData()
        }
        
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
    
    func retrievePictures(completed: @escaping () -> (), onFailure: @escaping () -> ()) {
        let url = URL(string: "https://api.unsplash.com/photos/?client_id=Ahj-66mbyiRNL-GhTltHoIgGfkznNgv7SALhCOTLMaM")
        
        URLSession.shared.dataTask(with: url!) { data, response, error in
            if error == nil {
                do {
                    self.albumsList = try JSONDecoder().decode([AlbumModel].self, from: data!)
                    DispatchQueue.main.async { completed() }
                } catch {
                    print("error fetching the data from the server")
                    print("showing mock data")
                    self.albumsList = DataMock.albums
                    DispatchQueue.main.async { onFailure() }
                }
            }
        }.resume()
    }
}
