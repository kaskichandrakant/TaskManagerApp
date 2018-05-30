//
//  ViewController.swift
//  TaskManagerApp
//
//  Created by Chandk on 30/05/18.
//  Copyright © 2018 tw. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    let cellId = "cellId"
    var items: [String] = ["some thing" , "some another thing"]
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationController?.navigationBar.barTintColor = .red
        navigationController?.navigationBar.tintColor = .white
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "add", style: .plain, target: self, action: #selector(addItem))
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
    }
    
    @objc func addItem(_ sender: AnyObject){
        print("added")
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        let item = items[indexPath.row]
        cell.textLabel?.text = item
        return cell
    }
    
}

