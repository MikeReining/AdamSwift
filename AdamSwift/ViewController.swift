//
//  ViewController.swift
//  AdamSwift
//
//  Created by Michael Reining on 1/13/15.
//  Copyright (c) 2015 Mike Reining. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var questionTextField: UITextField!
    var textField: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        questionTextField.delegate = self
        answerLabel.hidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        // called when 'return' key pressed. return NO to ignore.
        textField.resignFirstResponder()
        return true;
    }

    
    /**
    * Called when the user click on the view (outside the UITextField).
    */
    
    
    


    @IBAction func adamSays(sender: UITextField) {
        var tempString = whatShouldAdamSay(sender.text)
        answerLabel.text? = tempString
        answerLabel.hidden = false
    }
    
    
    func whatShouldAdamSay(textString: String) -> String {
        
        for char in textString {
            if char == "?" {
                return "Sure"
            }
        }
        
        var tempString = textString.uppercaseString
        
        if tempString == textString {
        
            return "Woah, chill out!"
        }

        if textString == "" {
            return ""
        }
        
        return "Whatever"
    
    }
    
    
}

