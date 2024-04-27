//
//  ViewController.swift
//  S6Churivanti
//
//  Created by Mac19 on 20/04/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var CatTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        CatTableView.delegate = self
        CatTableView.dataSource = self
    }
    
    let post: [Post] = [
        Post(username: "Churi", imagProfile: "tom", imgPost: "tom3"),
        Post(username: "Jhon", imagProfile: "tom", imgPost: "tom3"),
        Post(username: "Willy", imagProfile: "tom", imgPost: "tom3")
    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return post.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = CatTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        as! CatTableViewCell
        
        let post = post[indexPath.row]
        
        cell.username.text = post.username
        cell.imgProfile.image = UIImage(named: post.imagProfile)
        cell.imgPost.image = UIImage(named: post.imgPost)
        
        return cell
    }

    

}

