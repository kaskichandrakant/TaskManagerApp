//
//  ViewController.swift
//  TaskManagerApp
//
//  Created by Chandk on 30/05/18.
//  Copyright © 2018 tw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationController?.navigationBar.barTintColor = .red
        navigationController?.navigationBar.tintColor = .white
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "add", style: .plain, target: self, action: #selector(addItem))
    }
    
    @objc func addItem(_ sender: AnyObject){
        print("added")
    }
}

