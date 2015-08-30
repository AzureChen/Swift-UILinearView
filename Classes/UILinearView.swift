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

//    override func drawRect(rect: CGRect) {
//    }
//    
//    override func addSubview(view: UIView) {
//        super.addSubview(view)
//    }
    
    override func layoutSubviews() {
        var currentWidth: CGFloat = 0.0
        var currentHeight: CGFloat = 0.0
        
        for (var i = 0; i < self.subviews.count;i++) {
            var subview: UIView = self.subviews[i] as! UIView
            
            if (orientation == UILinearView.HORIZONTAL) {
                subview.frame = CGRect(x: currentWidth, y: 0, width: subview.frame.size.width, height: subview.frame.size.height)
                
                currentWidth += subview.frame.size.width
                currentHeight = max(currentHeight, subview.frame.size.height)
            }
            if (orientation == UILinearView.VERTICAL) {
                subview.frame = CGRect(x: 0, y: currentHeight, width: subview.frame.size.width, height: subview.frame.size.height)
                
                currentWidth = max(currentWidth, subview.frame.size.width)
                currentHeight += subview.frame.size.height
            }
        }
        
        self.frame.size = CGSize(width: currentWidth, height: currentHeight)
    }
}
