//
//  UIScrollLinearView.swift
//  UILinearView
//
//  Created by Azure Chen on 2015/8/31.
//  Copyright (c) 2015 AzureChen. All rights reserved.
//

import UIKit

class UILinearScrollView: UIScrollView {
    
    override func layoutSubviews() {
        self.subviews[0].setTranslatesAutoresizingMaskIntoConstraints(true)
        self.removeConstraints(self.constraints())
        self.contentSize = self.subviews[0].frame.size
    }
}
