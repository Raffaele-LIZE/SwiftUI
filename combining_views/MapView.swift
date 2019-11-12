//
//  MapView.swift
//  combining_views
//
//  Created by Raffaële PY  on 12/11/2019.
//  Copyright © 2019 Raffaële PY . All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    /// Creates a `UIView` instance to be presented.
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }

    /// Updates the presented `UIView` (and coordinator) to the latest configuration.
    func updateUIView(_ view: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: 34.011286, longitude: -116.1666868)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
