//
//  ViewController.swift
//  To Do List
//
//  Created by Daniel Odorizzi on 7/10/18.
//  Copyright © 2018 Daniel Odorizzi. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {
    
    let itemArray = ["Find Weed", "Buy Food", "Smoke Dabs"]

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    // MARK - TableView DataSource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    // MARK - TableView Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        
       // print (itemArray[indexPath.row])
        
        
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
           
        tableView.cellForRow(at: indexPath)?.accessoryType = .none
       
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
//    tableView.delegate = self
//    tableView.dataSource = self

  


}



















