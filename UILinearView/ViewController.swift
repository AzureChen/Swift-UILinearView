//
//  ViewController.swift
//  UILinearView
//
//  Created by Azure Chen on 2015/8/29.
//  Copyright (c) 2015年 AzureChen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var horizontalLinearView: UILinearView!
    @IBOutlet weak var verticalLinearView: UILinearView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var colors = [UIColor.redColor(), UIColor.greenColor(), UIColor.blueColor()]
        for (var i = 0; i < 3; i++) {
            var view = UIView()
            view.setConstWidth(100)
            view.setConstHeight(200)
            
            view.backgroundColor = colors[i] as UIColor
            horizontalLinearView.addSubview(view)
        }
    }
}

