//
//  ColorDetailViewController.swift
//  Rainbow
//
//  Created by Dillon P on 7/23/19.
//  Copyright © 2019 Dillon P. All rights reserved.
//

import UIKit

class ColorDetailViewController: UIViewController {

    var cellColor: MyColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let cellColor = cellColor {
            self.title = cellColor.name
            view.backgroundColor = cellColor.color
        }
        
    }

}
