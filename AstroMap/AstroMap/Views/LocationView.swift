//
//  LocationView.swift
//  AstroMap
//
//  Created by AstroTeam on 21/03/2023.
//

import SwiftUI
import MapKit

struct LocationView: View {
    @State private var mapType: MKMapType = .standard
    @EnvironmentObject private var viewModel: LocationsViewModel
    
    var body: some View {
        NavigationView {
            ZStack {
                MapView()
                    .edgesIgnoringSafeArea(.top)
                
                VStack {
                    HStack {
                        Spacer()
                        ButtonMapTypeView(mapType: $mapType)
                    }
                    .padding(.trailing, 16)
                    .padding(.top, 72)
                    
                    Spacer()
                    locationsPreviewStack
                }
            }
            .background(Color("DarkBlue"))
        }
    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
            .environmentObject(LocationsViewModel())
    }
}

extension LocationView {
    private var locationsPreviewStack: some View {
        ZStack {
            ForEach(viewModel.locations) { location in
                if viewModel.mapLocation == location {
                    LocationPreviewView(location: location)
                        .shadow(color: Color.black.opacity(0.3), radius: 20)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .transition(AnyTransition.scale.animation(.easeInOut))
                }
            }
        }
    }
}
