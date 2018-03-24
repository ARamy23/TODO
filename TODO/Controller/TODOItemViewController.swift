//
//  TODOItemViewController.swift
//  TODO
//
//  Created by Ahmed Ramy on 2/16/18.
//  Copyright © 2018 Ahmed Ramy. All rights reserved.
//

import UIKit
import JVFloatLabeledTextField

class TODOItemViewController: UIViewController {

    
    @IBOutlet weak var checkButtonBorder: UIView!
    @IBOutlet weak var checkButton: UIButton!
    @IBOutlet weak var titleLabel: JVFloatLabeledTextField!
    @IBOutlet weak var detailsLabel: JVFloatLabeledTextView!
    
    var modelToBeRecieved : TODOModel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if modelToBeRecieved != nil
        {
            checkButton.isSelected = modelToBeRecieved.isDone
            titleLabel.text = modelToBeRecieved.titleLabel
            detailsLabel.text = modelToBeRecieved.detailLabel
        }
        
        checkButtonBorder.setCircle()
    }
    
    
    @IBAction func checkButtonPressed(_ sender: Any) {
        checkButton.isSelected = !checkButton.isSelected
    }
    
    func setModel(model : TODOModel)
    {
        modelToBeRecieved = model
    }
    @IBAction func saveButtonPressed(_ sender: UIButton)
    {
        performSegue(withIdentifier: "goBackHome", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! TODOTableViewController
        destination.modelRecieved = TODOModel(titleLabel: titleLabel.text, detailLabel: detailsLabel.text, isDone: checkButton.isSelected)
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
