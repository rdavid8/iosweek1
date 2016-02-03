//
//  TodoListViewController.swift
//  ToDo
//
//  Created by Ryan David on 2/3/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import UIKit

class TodoListViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let todo = Todo(listItem: "Groceries", descript: "Apples", quantity: 1, date: 2/2/16, identifier: nil)
        
        let todoTwo = Todo(listItem: "Clothes", descript: "T-shirt", quantity: 1, date: 2/3/16, identifier: nil)
        TodoList.shared.add(todo)
        TodoList.shared.add(todoTwo)
        
        for todo in TodoList.shared.allObjects()
        {
            print(todo.listItem)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
