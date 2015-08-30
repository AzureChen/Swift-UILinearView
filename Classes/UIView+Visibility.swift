//
//  UIView+Visibility.swift
//  UILinearView
//
//  Created by Azure Chen on 2015/8/30.
//  Copyright (c) 2015 AzureChen. All rights reserved.
//

import UIKit

extension UIView {
    
    func setConstWidth(width: CGFloat) {
        self.addConstraint(NSLayoutConstraint(
            item: self,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: width))
    }
    
    func setConstHeight(height: CGFloat) {
        self.addConstraint(NSLayoutConstraint(
            item: self,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: height))
    }

}
