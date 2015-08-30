//
//  UILinearView.swift
//  UILinearView
//
//  Created by Azure Chen on 2015/8/29.
//  Copyright (c) 2015 AzureChen. All rights reserved.
//

import UIKit

@IBDesignable
class UILinearView: UIView {
    
    static let HORIZONTAL: Int = 0
    static let VERTICAL: Int = 1
    
    @IBInspectable var orientation: Int = UILinearView.HORIZONTAL

    override func drawRect(rect: CGRect) {
        
    }
    
    override func addSubview(view: UIView) {
        super.addSubview(view)
        
        arrangeSubviews()
    }
    
    func arrangeSubviews() {
        for (var i = 0; i < self.subviews.count;i++) {
            self.subviews[i].setTranslatesAutoresizingMaskIntoConstraints(false)            
            
            if (orientation == UILinearView.HORIZONTAL) {
                if (i == 0) {
                    self.addConstraint(NSLayoutConstraint(item: self.subviews[i], attribute: NSLayoutAttribute.Leading, relatedBy: NSLayoutRelation.Equal, toItem: self, attribute: NSLayoutAttribute.Leading, multiplier: 1.0, constant: 0.0))
                } else {
                    self.addConstraint(NSLayoutConstraint(item: self.subviews[i], attribute: NSLayoutAttribute.Leading, relatedBy: NSLayoutRelation.Equal, toItem: self.subviews[i - 1], attribute: NSLayoutAttribute.Trailing, multiplier: 1.0, constant: 0.0))
                }
            }
        }
    }
}
