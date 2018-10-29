//
//  File.swift
//  RemindersApp
//
//  Created by Pratheeksha Ravindra Naik on 2018-10-28.
//  Copyright. All rights reserved.
//

import Foundation

public class ListModel {
    
    var taskList = [Task]()
    
    
    
    
    // sort by date descending
    
    func sortByDate(tasks: [Task]) -> [Task] {
        
        var tasksToSort = tasks
        
        tasksToSort.sort(by: { $0.tmpDueDate!.compare($1.tmpDueDate!) == .orderedAscending })
        
        return tasksToSort
        
    }
    
    
    
    // sort by priority ascending
    
    func sortByPriority(tasks: [Task], order: String = "asc") -> [Task] {
        
        var tasksToSort = tasks
        
        if order == "asc" {
            
            tasksToSort.sort(by: { $0.priority < $1.priority})
            
        } else {
            
            tasksToSort.sort(by: { $0.priority > $1.priority})
            
        }
        
        return tasksToSort
        
    }
    
    

    func sortNormalTasks() {
        
        self.taskList = self.sortByPriority(tasks: self.taskList, order: "desc")
        
        self.taskList = self.sortByDate(tasks: self.taskList)
        
    }
    
    
    
    func getSortedTasks(_ tasks: [Task]) -> [Task] {
    
        self.sortNormalTasks()
        
        let sortedTasks = self.taskList
        
        return sortedTasks
        
    }
    
}




