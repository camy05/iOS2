//
//  ViewController.swift
//  Calculator
//
//  Created by Cameron Ghods on 9/8/17.
//  Copyright © 2017 Cameron Ghods. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var numberOnScreen:Double = 0;
    var previousNumber:Double = 0;
    var performingMath = false;
    var mathOperator = ""
    
    @IBOutlet weak var equationLabel: UILabel!
    

    @IBAction func allNumbers(_ sender: UIButton) {
        
        if performingMath == true
        {
            equationLabel.text = "\(previousNumber) \(mathOperator)" + String(sender.tag-1)
            
            
            
            performingMath = false
        }
            
        else
        {
            equationLabel.text = equationLabel.text! + String(sender.tag-1);
            
            
        }
        
    }
    
    
    @IBAction func operationButtons(_ sender: UIButton) {
        
        if equationLabel.text != "" && sender.tag != 11 && sender.tag != 16 {
            
            previousNumber = Double(sender.tag-1)
            
            if sender.tag == 12 //divide
            {
                
            }
            if sender.tag == 13 //multiply
            {
                
            }
            if sender.tag == 14 //substract
            {
                
            }
            if sender.tag == 15 // add
            {
                mathOperator = "+"
                
                
            }

            performingMath = true
        
        
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

