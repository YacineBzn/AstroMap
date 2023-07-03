//
//  DetailView.swift
//  AstroMap
//
//  Created by AstroTeam on 21/03/2023.
//

import SwiftUI

struct DetailView: View {
    let location: Location
    @State private var showFullDescription: Bool = false

    var body: some View {
        ScrollView {
            HStack {
                Spacer()
                Button(action: {
                    actionSheet()
                }) {
                    Image(systemName: "square.and.arrow.up")
                        .font(.title2)
                        .foregroundColor(Color("Yellow"))
                }
                .padding(.trailing, 16)
            }

            VStack(alignment: .leading, spacing: 10) {
                Image(location.image)
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: .infinity)
                    .clipped()
                    .cornerRadius(5)
                
                Text(location.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top)
                    .foregroundColor(Color("WhiteGold"))
                
                Text(location.address)
                    .foregroundColor(Color("WhiteGold"))
                
                Text(location.description)
                    .lineLimit(showFullDescription ? nil : 2)
                    .padding(.top)
                    .foregroundColor(Color("WhiteGold"))
                
                Button(action: {
                    showFullDescription.toggle()
                }) {
                    Text(showFullDescription ? "Masquer la description" : "Afficher la description")
                        .font(.callout)
                        .foregroundColor(Color("Yellow"))
                }
                
                if location.isOpen {
                    Text("Ouvert")
                        .foregroundColor(.green)
                } else {
                    Text("Fermé")
                        .foregroundColor(.red)
                }
                
                Text("Horaires d'ouverture :")
                    .font(.headline)
                    .padding(.top)
                    .foregroundColor(Color("WhiteGold"))
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(location.schedule.indices, id: \.self) { index in
                            VStack {
                                Text(location.schedule[index])
                                    .font(.subheadline)
                                    .foregroundColor(Color("WhiteGold"))
                                Text(location.hours[index])
                                    .foregroundColor(Color("WhiteGold"))
                            }
                            .padding(.trailing, 20)
                        }
                    }
                }
                
                Text("Billets :")
                    .font(.headline)
                    .padding(.top)
                    .foregroundColor(Color("WhiteGold"))
                
                ForEach(location.price.sorted(by: >), id: \.key) { key, value in
                    HStack {
                        Text(key)
                            .foregroundColor(Color("WhiteGold"))
                        Spacer()
                        Text("\(value, specifier: "%.2f") €")
                            .foregroundColor(Color("WhiteGold"))
                    }
                }
                
            }
            .padding()
        }
        .background(Color("DarkBlue"))
        .onAppear() {
            setupNavBarAppearance()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(location: LocationsDataService.locations.first!)
    }
}

extension DetailView {
    private func setupNavBarAppearance() {
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor(Color("DarkBlue"))
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
    
    private func actionSheet() {
        guard let urlShare = URL(string: "https://developer.apple.com/xcode/swiftui/") else { return }
        let activityVC = UIActivityViewController(activityItems: [urlShare], applicationActivities: nil)
        
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
           let rootViewController = windowScene.windows.first?.rootViewController {
            rootViewController.present(activityVC, animated: true, completion: nil)
        }
    }
}
