//
//  SearchView.swift
//  AstroMap
//
//  Created by AstroTeam on 21/03/2023.
//

import SwiftUI

struct PlaceRow: View {
    let locations: [Location]
    let title: String

    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.title2)
                .fontWeight(.semibold)
                .padding(.top, 25)
                .foregroundColor(Color("WhiteGold"))
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top) {
                    ForEach(locations) { location in
                        VStack {
                            NavigationLink(destination: DetailView(location: location)) {
                                Image(location.image)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 200, height: 150)
                                    .cornerRadius(10)
                                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white.opacity(0.2), lineWidth: 1))
                            }
                            NavigationLink(destination: DetailView(location: location)) {
                                Text(location.name)
                                    .lineLimit(2)
                                    .frame(width: 200)
                                    .fixedSize(horizontal: false, vertical: true)
                                    .foregroundColor(Color("WhiteGold"))
                                    .font(.headline)
                            }
                        }
                        .padding(.trailing, 20)
                    }
                }
            }
        }
    }
}

struct SearchView: View {
    let locations = LocationsDataService.locations
    @State private var searchText = ""

    func filteredPlaces() -> [Location] {
        if searchText.isEmpty {
            return locations
        } else {
            return locations.filter { place in
                place.name.lowercased().contains(searchText.lowercased())
            }
        }
    }

    var body: some View {
        NavigationView {
            VStack {
                TextField("Recherche", text: $searchText)
                    .padding()
                    .background(Color("Yellow").opacity(0.8))
                    .cornerRadius(10)
                    .padding(.horizontal)
                    .padding(.top, 20)
                    .foregroundColor(Color("DarkBlue"))
                    .accentColor(.white)

                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading) {
                        PlaceRow(locations: filterPlacesByCategory(locations: filteredPlaces(), category: .observatory), title: "Observatoire")
                        PlaceRow(locations: filterPlacesByCategory(locations: filteredPlaces(), category: .museum), title: "Musée")
                        PlaceRow(locations: filterPlacesByCategory(locations: filteredPlaces(), category: .planetarium), title: "Planétarium")
                        PlaceRow(locations: filterPlacesByCategory(locations: filteredPlaces(), category: .astronomyclub), title: "Club d'astronomie")
                        Spacer()
                            .frame(height: 30)
                    }
                    .padding(.horizontal)
                    .frame(maxHeight: .infinity)
                    .ignoresSafeArea(.all)
                }
            }
            .background(Color("DarkBlue"))
        }
    }
}

struct ContentView: View {
    var body: some View {
        SearchView()
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

func filterPlacesByCategory(locations: [Location], category: Tag) -> [Location] {
    return locations.filter { $0.category == category }
}
