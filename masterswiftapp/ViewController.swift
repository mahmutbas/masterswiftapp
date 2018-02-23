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
       
        //UserDefaults.standard.set("Mahmut", forKey: "king")
        let nameObject = UserDefaults.standard.object(forKey: "king")
        if let name = nameObject as? String
        {
             print(name)
        }
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

