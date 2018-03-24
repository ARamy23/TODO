//
//  UIComponents Extensions.swift
//  TODO
//
//  Created by Ahmed Ramy on 2/16/18.
//  Copyright © 2018 Ahmed Ramy. All rights reserved.
//

import UIKit

extension UIView
{
    func setCircle()
    {
        self.layer.cornerRadius = self.frame.height / 2
        self.layer.borderColor = UIColor.gray.cgColor
        self.layer.borderWidth = 5
    }
}
