//
//  LocationPreviewView.swift
//  AstroMap
//
//  Created by AstroTeam on 26/03/2023.
//

import SwiftUI

struct LocationPreviewView: View {
    let location: Location
    
    var body: some View {
        NavigationLink(
            destination: DetailView(location: location),
            label: {
                VStack {
                    HStack(alignment: .top, spacing: 4) {
                        VStack(alignment: .leading, spacing: 16) {
                            imageSection
                        }
                        
                        VStack(alignment: .leading, spacing: 0) {
                            HStack(alignment: .top) {
                                titleSection
                                Spacer()
                                favoriteSection
                            }
                            
                            HStack(alignment: .bottom, spacing: 4) {
                                subtitleSection
                            }
                        }
                        .padding(8)
                    }
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.ultraThinMaterial)
                            .frame(height: 110)
                    )
                }
            })
            .buttonStyle(PlainButtonStyle())
    }
}

struct LocationPreviewView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ZStack {
                Color.blue.ignoresSafeArea()
                LocationPreviewView(location: LocationsDataService.locations.first!)
                    .padding()
            }
        }
    }
}

extension LocationPreviewView {
    private var imageSection: some View {
        ZStack {
            if let imageName = location.image {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 110, height: 110)
                    .cornerRadius(10)
            }
        }
        .background(Color.white)
        .cornerRadius(10)
    }

    private var titleSection: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(location.name)
                .font(.headline)
                .fontWeight(.bold)
            
            Text(location.cityName)
                .font(.subheadline)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .foregroundColor(Color("DarkBlue"))
        .padding(.top, 8)
    }
    
    private var favoriteSection: some View {
        VStack {
            if location.favorite {
                Image(systemName: "star.fill")
                    .foregroundColor(Color("Yellow"))
            } else {
                Image(systemName: "star")
            }
        }
    }
    
    private var subtitleSection: some View {
        VStack(alignment: .leading) {
            if location.isOpen {
                Text("Ouvert")
                    .foregroundColor(.green)
                    .font(.footnote)
                    .fontWeight(.bold)
            } else {
                Text("Fermé")
                    .foregroundColor(.red)
                    .font(.footnote)
                    .fontWeight(.bold)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.top, 10)
    }
}
