//
//  LocationManager.swift
//  AstroMap
//
//  Created by AstroTeam on 23/03/2023.
//

import Foundation
import CoreLocation

class LocationManager: NSObject, ObservableObject {
    private let locationManager = CLLocationManager()

    override init() {
        super.init()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
}

extension LocationManager: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard !locations.isEmpty else { return }
        locationManager.stopUpdatingLocation()
    }
}
