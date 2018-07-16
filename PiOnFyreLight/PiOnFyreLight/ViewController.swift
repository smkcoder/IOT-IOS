//
//  ViewController.swift
//  PiOnFyreLight
//
//  Created by saagar.manohar.kale on 7/17/18.
//  Copyright © 2018 saagar.manohar.kale. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setLed(state: "ON")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func toggleSwitch(_ sender: UISwitch) {
        if (sender.isOn == true) {
            setLed(state: "ON")
        }
        else {
            setLed(state: "OFF")
        }
        print(sender)
    }
    func setLed(state:String) {
        let ref = Database.database().reference()
        let post : [String:AnyObject] = ["State":state as AnyObject]
        ref.child("led").setValue(post)
    }
}

