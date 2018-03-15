//
//  FindLocationViewController.swift
//  masterswiftapp
//
//  Created by Mahmut Bas on 09/03/2018.
//  Copyright © 2018 Mahmut Bas. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class FindLocationViewController: UIViewController,CLLocationManagerDelegate {

    var locationManager = CLLocationManager()
    
    @IBOutlet weak var mapViewUserLocation: MKMapView!
    
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
        let userLocation:CLLocation = locations[0]
        let latitude = userLocation.coordinate.latitude
        let longitude = userLocation.coordinate.longitude
        let latDelta:CLLocationDegrees = 0.01
        let lonDelta:CLLocationDegrees = 0.01
        let span = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta)
        let location = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        let region = MKCoordinateRegion(center: location, span: span)
        self.mapViewUserLocation.setRegion(region, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
