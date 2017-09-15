//
//  ViewController.swift
//  UpdatedCoreDataExampleInSwift
//
//  Created by Vasudha Jags on 9/15/17.
//  Copyright © 2017 Vasudha J. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let categoryClass : String = String(describing: Category.self)
        let titleClass : String = String(describing: Titles.self)
        let category = NSEntityDescription.insertNewObject(forEntityName: categoryClass, into: DatabaseController.persistentContainer.viewContext) as! Category
        let titles = NSEntityDescription.insertNewObject(forEntityName: titleClass, into: DatabaseController.persistentContainer.viewContext) as! Titles
        category.categoryName = "TestCategoryName"
        DatabaseController.saveContext()
        titles.title = "TestTitleName"
        titles.descriptionOfTitle = "Description"
         category.addToTitles(titles)
        
        
        let fetchRequest : NSFetchRequest<Category> = Category.fetchRequest()
        
        do{
        
        let searchResults = try DatabaseController.persistentContainer.viewContext.fetch(fetchRequest)
            print("number of search count\(searchResults)")
            
            for results in searchResults as [Category]{
            
            print(results.categoryName ?? "")
                
            }
        }catch{
        
        print("Error")
        }
        
        
        let fetchRequest1 : NSFetchRequest<Titles> = Titles.fetchRequest()
        
        do{
            
            let searchResults = try DatabaseController.persistentContainer.viewContext.fetch(fetchRequest1)
//            print("number of search count\(searchResults)")
            
            for results in searchResults as [Titles]{
                
                print(results.descriptionOfTitle ?? "")
                
            }
        }catch{
            
            print("Error")
        }


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

