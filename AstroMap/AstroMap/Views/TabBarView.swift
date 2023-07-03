//
//  TabBarView.swift
//  AstroMap
//
//  Created by AstroMap on 29/03/2023.
//

import SwiftUI

enum Screen {
    case search
    case map
    case favorite
    case settings
}

struct TabBarView: View {
    @State private var selection = Screen.search
    @StateObject private var viewModel = LocationsViewModel()
    
    var body: some View {
        TabView(selection: $selection) {
            SearchView()
                .tabItem {
                    Image(systemName: "binoculars")
                    Text("Search")
                }
                .tag(Screen.search)
            LocationView()
                .tabItem {
                    Image(systemName: "globe.desk")
                    Text("Map")
                }
                .tag(Screen.map)
            FavoriteView()
                .tabItem {
                    Image(systemName: "star")
                    Text("Favoris")
                }
                .tag(Screen.favorite)
            SettingsView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Paramètres")
                }
                .tag(Screen.settings)
        }
        .onAppear() {
            setupTabBarAppearance()
        }
        .tint(Color("Yellow"))
        .environmentObject(viewModel)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}

extension TabBarView {
    private func setupTabBarAppearance() {
        let appearance = UITabBarAppearance()
        appearance.backgroundColor = UIColor(Color("DarkBlue"))
        UITabBar.appearance().backgroundColor = UIColor(Color("DarkBlue"))
        UITabBar.appearance().unselectedItemTintColor = UIColor(Color("WhiteGold"))
        UITabBar.appearance().standardAppearance = appearance
    }
}
