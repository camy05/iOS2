//
//  ViewController.swift
//  Calculator2
//
//  Created by Cameron Ghods on 9/11/17.
//  Copyright © 2017 Cameron Ghods. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    
    @IBOutlet weak var equationLabel: UILabel! // top label
    
    @IBOutlet weak var answerLabel: UILabel! // bottom label

    @IBAction func numbers(_ sender: UIButton) // number tags are label+1
    {
        
    equationLabel.text = equationLabel.text! + String(sender.tag-1)
        
        
    }
    
    
    @IBAction func functions(_ sender: UIButton) // tags from top left -> top right -> bottom right ->bottom left
    {
        if sender.tag == 11 // clear
        {
        equationLabel.text = ""
        answerLabel.text = ""
        }
        if sender.tag == 12 // left para
        {
        equationLabel.text = equationLabel.text! + "("
        }
        if sender.tag == 13 // right para
        {
        equationLabel.text = equationLabel.text! + ")"
        }
        if sender.tag == 14 // division
        {
        equationLabel.text = equationLabel.text! + "/"
        }
        if sender.tag == 15 // multiply
        {
        equationLabel.text = equationLabel.text! + "*"
        }
        if sender.tag == 16 // subtract
        {
        equationLabel.text = equationLabel.text! + "-"
        }
        if sender.tag == 17 // addition
        {
        equationLabel.text = equationLabel.text! + "+"
        }
        
        if sender.tag == 18 // equals https://stackoverflow.com/questions/24704028/nsexpression-calculator-in-swift
        {
        
        if equationLabel.text != ""
        {
        let expr = NSExpression(format: equationLabel.text!)
        if let result = expr.expressionValue(with: nil, context: nil) as? Double
        {
                answerLabel.text = String(result)
        } else
        {
                answerLabel.text = "Syntax Error"
        }
            
        }
        }
        
        if sender.tag == 19 // decimal
        {
        equationLabel.text = equationLabel.text! + "."
        }
        if sender.tag == 20 // negative
        {
            equationLabel.text = equationLabel.text! + "-";
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

