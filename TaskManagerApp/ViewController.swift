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
    var items: [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationController?.navigationBar.barTintColor = .red
        navigationController?.navigationBar.tintColor = .white
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "add", style: .plain, target: self, action: #selector(addItem))
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
    }
    
    @objc func addItem(_ sender: AnyObject){
        let alertController = getAlertController()
        let saveAction = UIAlertAction(title: "save", style: .default) {[unowned self] action in
            guard let textField = alertController.textFields?.first , let item = textField.text else {return}
            self.add(itemToAdd: item)
            self.tableView.reloadData()
        }
        alertController.addTextField(configurationHandler: nil)
        alertController.addAction(saveAction)
        present(alertController, animated: true,completion: nil)
    }
    
    func getAlertController()-> UIAlertController{
        let alertController = UIAlertController(title: "Add new item", message: "write task to add", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: .destructive, handler: nil)
        alertController.addAction(cancelAction)
        return alertController
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
    func add(itemToAdd: String){
        items.append(itemToAdd)
    }
}

