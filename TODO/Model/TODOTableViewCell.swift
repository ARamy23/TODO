//
//  TODOTableViewCell.swift
//  TODO
//
//  Created by Ahmed Ramy on 2/16/18.
//  Copyright © 2018 Ahmed Ramy. All rights reserved.
//

import UIKit

struct TODOModel
{
    var titleLabel : String!
    var detailLabel : String!
    var isDone : Bool!
}

class TODOTableViewCell: UITableViewCell {

    @IBOutlet weak var checkButtonBorder: UIView!
    @IBOutlet weak var checkButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var detailsLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        styleTheCell()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func styleTheCell()
    {
        checkButtonBorder.setCircle()
    }
    
    func setModel(model : TODOModel)
    {
        titleLabel.text = model.titleLabel
        detailsLabel.text = model.detailLabel
        checkButton.isSelected = model.isDone
    }
    
}
