//
//  ViewController.swift
//  UILinearView
//
//  Created by Azure Chen on 2015/8/29.
//  Copyright (c) 2015年 AzureChen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var verticalLinearView: UILinearView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var colors = [UIColor.redColor(), UIColor.greenColor(), UIColor.blueColor()]
        for (var i = 0; i < 3; i++) {
            var view = UIView(frame: CGRect(x: 0, y: 0, width: 100 * (3 - i), height: 100))
            
            view.backgroundColor = colors[i] as UIColor
            verticalLinearView.addSubview(view)
        }
    }
    
    @IBAction func changeHeight(sender: UIButton) {
        var subview: UIView = verticalLinearView.subviews[1] as! UIView
        subview.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: 50)
    }
}

