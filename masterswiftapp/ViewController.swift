//
//  ViewController.swift
//  masterswiftapp
//
//  Created by Mahmut Bas on 20/02/2018.
//  Copyright © 2018 Mahmut Bas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var webview: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // we can load to webview ourselves html codes
        //webview.loadHTMLString("<h3>Hello Mahmut</h3>", baseURL: nil)
        
        if let url = URL(string: "https://www.stackoverflow.com") {
            let request = NSMutableURLRequest(url: url)
            let task = URLSession.shared.dataTask(with: request as URLRequest){
                data, response,error in
                if error != nil {
                    print(error as Any)
                }else {
                    if let unwrappedData = data {
                        let dataString = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue)
                        print(dataString as Any)
                    }
                }
            }
            task.resume()
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

