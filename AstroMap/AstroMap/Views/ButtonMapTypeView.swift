//
//  ButtonMapTypeView.swift
//  AstroMap
//
//  Created by AstroTeam on 24/03/2023.
//

import SwiftUI
import MapKit

struct ButtonMapTypeView: View {
    @Binding var mapType: MKMapType
    
    var body: some View {
        Menu(content: {
            Button(action: {
                mapType = .standard
            }, label: {
                Text("Standard")
            })
            Button(action: {
                mapType = .hybrid
            }, label: {
                Text("Hybrid")
            })
            Button(action: {
                mapType = .satellite
            }, label: {
                Text("Satellite")
            })
        }, label: {
            Image(systemName: "map.fill")
                .frame(width: 40, height: 40)
                .foregroundColor(Color("WhiteGold"))
                .background(Color("DarkBlue"))
                .cornerRadius(10)
        })
    }
}

struct ButtonMapTypeView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            ButtonMapTypeView(mapType: .constant(.standard))
        }
    }
}
