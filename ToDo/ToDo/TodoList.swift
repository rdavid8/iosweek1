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
    
    var items: [List]

    static let shared = TodoList()
    
    private init()
    {
        guard let data = NSData(contentsOfURL: NSURL.archiveURL()) else {
            self.items = [List]()
            return
        }
        guard let storedObject = NSKeyedUnarchiver.unarchiveObjectWithData(data) as? [Object] else {
            self.items = [List]()
            return
        }
        self.items = storedObject
    }

    }


