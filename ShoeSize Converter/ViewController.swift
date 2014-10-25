//
//  ViewController.swift
//  ShoeSize Converter
//
//  Created by Wilson Lam on 10/17/14.
//  Copyright (c) 2014 Wilson Lam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    @IBOutlet weak var mensConvertedLabel: UILabel!
    
    
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    @IBOutlet weak var womensConvertedLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func mensButtonPressed(sender: UIButton) {
        
        let sizeFromTextField = mensShoeSizeTextField.text.toInt()!
        
        let conversionConstant = 30
        
        mensConvertedLabel.text = "\(sizeFromTextField + conversionConstant) in European show size."
        
        mensConvertedLabel.hidden = false
        
        mensShoeSizeTextField.text = ""
        
        mensShoeSizeTextField.resignFirstResponder()
    }

    
    @IBAction func womenButtonPressed(sender: UIButton) {
        let sizeFromTextField = Double((womensShoeSizeTextField.text as NSString).doubleValue)
        
        let conversionConstant = 30.5
        
        womensConvertedLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European shoe size."
        
        womensConvertedLabel.hidden = false
        
        womensShoeSizeTextField.text = ""
        
        womensShoeSizeTextField.resignFirstResponder()
    }
    
}

