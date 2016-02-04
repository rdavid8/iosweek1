//
//  TodoList.swift
//  ToDo
//
//  Created by Ryan David on 2/3/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation

class TodoList: TodoDo
{
    typealias List = Todo
    
    var items = [List]()
    
    static let shared = TodoList()
    
    private init() {}
    
}