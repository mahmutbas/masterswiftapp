//
//  ViewController.swift
//  masterswiftapp
//
//  Created by Mahmut Bas on 20/02/2018.
//  Copyright © 2018 Mahmut Bas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func createAlert(_ sender: Any) {
        AlertViewController.createConfirmAlert(view: self, alertTitle: "Example Title", alertMessage: "Example Message",buttonTitle: "OK")
    }
    @IBAction func createConfirmAlert(_ sender: Any) {
        AlertViewController.createConfirmAlert(view: self, alertTitle: "Example Title", alertMessage: "Example Message",buttonTitle: "OK",button2Title: "NO")
    }
    
}

