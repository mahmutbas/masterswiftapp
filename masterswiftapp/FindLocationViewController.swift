//
//  FindLocationViewController.swift
//  masterswiftapp
//
//  Created by Mahmut Bas on 09/03/2018.
//  Copyright © 2018 Mahmut Bas. All rights reserved.
//

import UIKit
import CoreLocation

class FindLocationViewController: UIViewController,CLLocationManagerDelegate {

    var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 1. project settings> Build Phases > Link Binary with Libraries > add core location framework
        // 2. Info.plist add new row with name "NSLocationWhenInUsage"
        // 3. Info.plist choose from privacy list "Privacy - Location When In Use Usage Description"
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print(locations)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
