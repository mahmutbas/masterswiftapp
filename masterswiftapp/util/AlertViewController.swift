//
//  AlertViewController.swift
//  masterswiftapp
//
//  Created by Mahmut Bas on 20/02/2018.
//  Copyright © 2018 Mahmut Bas. All rights reserved.
//

import UIKit

class AlertViewController: UIViewController {
    
    static func createConfirmAlert(view:UIViewController, alertTitle:String, alertMessage:String, buttonTitle:String)
    {
        let alertController = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: buttonTitle, style: .default, handler: { (action) in
            print("\(buttonTitle) button trigged...")
            view.dismiss(animated: true, completion: nil)
        }))
        view.present(alertController, animated: true, completion: nil)
        
    }
    
    static func createConfirmAlert(view:UIViewController, alertTitle:String, alertMessage:String, buttonTitle:String, button2Title:String)
    {
        let alertController = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: buttonTitle, style: .default, handler: { (action) in
            print("\(buttonTitle) button trigged...")
            view.dismiss(animated: true, completion: nil)
        }))
        
        alertController.addAction(UIAlertAction(title: button2Title, style: .default, handler: { (action) in
            print("\(button2Title) button trigged...")
            view.dismiss(animated: true, completion: nil)
        }))
        
        view.present(alertController, animated: true, completion: nil)
    }
    
}
