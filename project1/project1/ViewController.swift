//
//  ViewController.swift
//  project1
//
//  Created by Haowen Tao on 16/3/3.
//  Copyright © 2016年 Haowen Tao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usrField: UITextField!
    @IBOutlet weak var psdField: UITextField!
    @IBOutlet weak var msg: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func reset(sender: AnyObject) {
        usrField.text = ""
        psdField.text = ""
        self.view.backgroundColor = UIColor.whiteColor()
        msg.text = "Already reset"
    }
    @IBAction func revealMessage(sender: AnyObject) {
        if(usrField.text == "username" && psdField.text == "password"){
            msg.text = "You unlocked the secret message"
            self.view.backgroundColor = UIColor.greenColor()
            
        } else {
            msg.text = "Keep trying"
            self.view.backgroundColor = UIColor.redColor()
        }
    }

    
}

