//
//  SettingsView.swift
//  AstroMap
//
//  Created by AstroTeam on 22/03/2023.
//

import SwiftUI

struct SettingsView: View {
    @AppStorage("locationPermission") var locationPermission = false
    @AppStorage("notificationPermission") var notificationPermission = false
    @AppStorage("searchRadius") var searchRadius = 100.0
    
    var body: some View {
        ZStack {
            Color("DarkBlue")
                .ignoresSafeArea()
            VStack(alignment: .leading, spacing: 24) {
                Text("Paramètres")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color("WhiteGold"))
                    .padding(.top, 50)
                    .padding(.bottom, 30)
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("Autorisations :")
                        .font(.headline)
                        .foregroundColor(Color("WhiteGold").opacity(0.8))
                        .padding(.bottom, 5)
                    Toggle(isOn: $locationPermission) {
                        Text("Autoriser la localisation")
                            .foregroundColor(Color("WhiteGold"))
                    }
                    Toggle(isOn: $notificationPermission) {
                        Text("Autoriser les notifications")
                            .foregroundColor(Color("WhiteGold"))
                    }
                }
                .padding()
                .background(Color("DarkBlue").opacity(0.8))
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.7), radius: 10, x: 0, y: 4)
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("Rayon de recherche")
                        .font(.headline)
                        .foregroundColor(Color("WhiteGold").opacity(0.8))
                        .padding(.bottom, 5)
                    HStack {
                        Text("10 km")
                            .font(.footnote)
                            .foregroundColor(Color("WhiteGold").opacity(0.8))
                        Slider(value: $searchRadius, in: 10...500, step: 10) {
                            Text("Rayon de recherche :")
                                .foregroundColor(Color("WhiteGold"))
                        }
                        Text("500 km")
                            .font(.footnote)
                            .foregroundColor(Color("WhiteGold").opacity(0.8))
                    }
                }
                .padding()
                .background(Color("DarkBlue").opacity(0.8))
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.7), radius: 10, x: 0, y: 4)
                
                Spacer()
            }
            .padding()
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
