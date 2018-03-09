//
//  BasicMapViewController.swift
//  masterswiftapp
//
//  Created by Mahmut Bas on 09/03/2018.
//  Copyright © 2018 Mahmut Bas. All rights reserved.
//

import UIKit
import MapKit

class BasicMapViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapkit: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
