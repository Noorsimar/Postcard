//
//  ViewController.swift
//  Postcard
//
//  Created by Noorsimar on 17/01/15.
//  Copyright (c) 2015 Noorsimar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        //Adding a Commnet here to test commits
        
        messageLabel.hidden = false
        nameLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        nameLabel.text = enterNameTextField.text
        messageLabel.textColor = UIColor.redColor()
        nameLabel.textColor = UIColor.blueColor()
        
        enterMessageTextField.text = ""
        enterNameTextField.resignFirstResponder()
        
        enterNameTextField.text = ""
        enterMessageTextField.resignFirstResponder() //keybord goes away
        
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }

}

