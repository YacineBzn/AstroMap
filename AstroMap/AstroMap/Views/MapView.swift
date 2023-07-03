//
//  MapView.swift
//  AstroMap
//
//  Created by AstroTeam on 29/03/2023.
//

import SwiftUI
import MapKit

struct MapView: View {
    @EnvironmentObject private var viewModel: LocationsViewModel
    
    var body: some View {
        Map(
            coordinateRegion: $viewModel.mapRegion,
            showsUserLocation: true,
            annotationItems: viewModel.locations,
            annotationContent: { location in
                MapAnnotation(coordinate: location.coordinate) {
                    LocationMapAnnotationView()
                        .scaleEffect(viewModel.mapLocation == location ? 1 : 0.7)
                        .shadow(radius: 10)
                        .onTapGesture {
                            viewModel.showNextLocation(location: location)
                        }
                }
            }
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
            .environmentObject(LocationsViewModel())
    }
}
