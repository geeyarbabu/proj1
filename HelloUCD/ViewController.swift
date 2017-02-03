//
//  ViewController.swift
//  HelloUCD
//
//  Created by gEeYaR's MacBook Pro on 27/01/2017.
//  Copyright © 2017 UCD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var right_view: UIView!
    @IBOutlet weak var left_view: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        left_view.isHidden = true
        right_view.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func didRotate(from fromInterfaceOrientation: UIInterfaceOrientation) {
        //swift 3
    
        left_view.isHidden = false
        right_view.isHidden = false
    }


}

