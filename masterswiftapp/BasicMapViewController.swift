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
        //41.012117, 28.983250
        let latitude: CLLocationDegrees = 41.012117
        let longitude: CLLocationDegrees = 28.983250
        let latDelta: CLLocationDegrees = 0.01 //zoom range
        let lonDelta: CLLocationDegrees = 0.01
        
        let span:MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta)
        let location: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        let region: MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
        
        mapkit.setRegion(region, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
