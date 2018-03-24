//
//  TODOTableViewController.swift
//  TODO
//
//  Created by Ahmed Ramy on 2/16/18.
//  Copyright © 2018 Ahmed Ramy. All rights reserved.
//

import UIKit

class TODOTableViewController: UITableViewController {
    
    @IBOutlet var todoTableView: UITableView!
    
    var tasks : [TODOModel] = []
    var modelRecieved : TODOModel?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        initData()
        if modelRecieved != nil
        {
            let newTask = modelRecieved
            tasks.append(newTask!)
            todoTableView.insertRows(
                at:[IndexPath(row: tasks.count - 1, section: 0)],
                with: UITableViewRowAnimation.automatic)
            
        }
        
    }
    
    func initData()
    {
        todoTableView.register(UINib(nibName: "TODOTableViewCell", bundle: nil), forCellReuseIdentifier: "TODOTableViewCell")
    }
    
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tasks.count
    }

        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = todoTableView.dequeueReusableCell(withIdentifier: "TODOTableViewCell", for: indexPath) as! TODOTableViewCell
            cell.setModel(model: tasks[indexPath.row])
            
        return cell
    }
 
    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
 

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
 

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
 

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
