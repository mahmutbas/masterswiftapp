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
        
        let annotation = MKPointAnnotation()
        annotation.title = "Istanbulun Merkezi"
        annotation.subtitle = "Tarihi yarim ada"
        annotation.coordinate = location
        
        mapkit.addAnnotation(annotation)
        
        let addNewPoint = UILongPressGestureRecognizer(target: self, action: #selector(BasicMapViewController.longpress(gestureRecognizer:)))
        addNewPoint.minimumPressDuration = 2
        mapkit.addGestureRecognizer(addNewPoint)
    }
    
    @objc func longpress(gestureRecognizer:UIGestureRecognizer){
        let touchPoint = gestureRecognizer.location(in: self.mapkit)
        let coordinate = mapkit.convert(touchPoint, toCoordinateFrom: self.mapkit)
        let annotation = MKPointAnnotation()
        annotation.coordinate = coordinate
        annotation.title = "New Title"
        annotation.subtitle = "This is my new point"
        mapkit.addAnnotation(annotation)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
