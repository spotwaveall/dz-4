//
//  ListViewController.swift
//  dom4
//
//  Created by Андрей on 18/10/2020.
//  Copyright © 2020 Андрей. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var news : [News] = [
        News(title: "News A", content: "News ANews ANews ANews ANews ANews ANews ANews ANews ANews ANews ANews ANews ANews ANews ANews ANews ANews ANews ANews ANews ANews ANews ANews ANews ANews ANews A", imageName: "paperplane"),
        News(title:"News B", content: "News BNews BNews BNews BNews BNews BNews BNews BNews BNews BNews BNews BNews BNews BNews BNews BNews BNews BNews BNews BNews BNews BNews BNews BNews BNews BNews BNews BNews BNews BNews BNews BNews BNews BNews BNews B", imageName: "xmark"),
        News(title: "News C", content: "News CNews CNews CNews CNews CNews CNews CNews CNews CNews CNews CNews CNews CNews CNews CNews CNews CNews CNews CNews CNews CNews CNews CNews CNews CNews CNews CNews CNews CNews CNews CNews CNews CNews CNews CNews CNews CNews CNews CNews CNews CNews C", imageName: "circle.fill")
    ]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()

    }
    
    func configureTableView() {
        tableView.delegate = self
        tableView.dataSource = self
    }

}

extension ListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return news.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NewsCell.identifier, for: indexPath) as! NewsCell
        
        let newsItem = news[indexPath.row]
        
        cell.titleLabel.text = newsItem.title
        cell.newsInageView.image = UIImage(systemName: newsItem.imageName)

        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        performSegue(withIdentifier: "ShowDetail", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDetail" {
      
        }
    }
}
