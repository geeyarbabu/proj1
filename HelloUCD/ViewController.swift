//
//  ViewController.swift
//  HelloUCD
//
//  Created by gEeYaR's MacBook Pro on 27/01/2017.
//  Copyright © 2017 UCD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var left_view: UIView!
    @IBOutlet weak var right_view: UIView!
    
    @IBOutlet weak var btn_color1: UIButton!
    @IBOutlet weak var btn_color2: UIButton!
    @IBOutlet weak var btn_color3: UIButton!
    
    @IBOutlet weak var lbl_ucd: UILabel!
    @IBOutlet weak var txt_entry: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        left_view.isHidden = true
        right_view.isHidden = true
        left_view.backgroundColor = self.view.backgroundColor
        right_view.backgroundColor = self.view.backgroundColor
        
     
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
  override func didRotate(from fromInterfaceOrientation: UIInterfaceOrientation)
        {
            
        if(UIDeviceOrientationIsLandscape(UIDevice.current.orientation))
        {
            left_view.isHidden = false
            right_view.isHidden = false

        }
        else{
            left_view.isHidden = true
            right_view.isHidden = true

            }
        
           }
        @IBAction func color1_click(_ sender: UIButton) {
        self.view.backgroundColor = btn_color1.backgroundColor
        left_view.backgroundColor = btn_color1.backgroundColor
            right_view.backgroundColor = btn_color1.backgroundColor
        
    }
    
    @IBAction func color2_click(_ sender: UIButton) {
        self.view.backgroundColor = btn_color2.backgroundColor
        left_view.backgroundColor = btn_color2.backgroundColor
        right_view.backgroundColor = btn_color2.backgroundColor
        
    }
    
    @IBAction func color3_click(_ sender: UIButton) {
        self.view.backgroundColor = btn_color3.backgroundColor
        left_view.backgroundColor = btn_color3.backgroundColor
        right_view.backgroundColor = btn_color3.backgroundColor
        
        
    }
    

    @IBAction func text_entry(_ sender: UITextField) {
        
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        txt_entry.resignFirstResponder()
        lbl_ucd.text = txt_entry.text

        return true
    }


    @IBAction func txt_change(_ sender: Any) {
        lbl_ucd.text = txt_entry.text
    }
}

