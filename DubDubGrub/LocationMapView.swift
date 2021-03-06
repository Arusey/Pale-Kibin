//
//  LocationMapView.swift
//  DubDubGrub
//
//  Created by Kevin Lagat on 22/07/2021.
//

import SwiftUI
import MapKit

struct LocationMapView: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -1.292066, longitude: 36.821945), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    var body: some View {
        ZStack {
            Map(coordinateRegion: $region)
                .ignoresSafeArea()
            VStack {
                Image("ddg-map-logo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 70)
                    .shadow(radius: 10)
                Spacer()
            }
        }
    }
}

struct LocationMapView_Previews: PreviewProvider {
    static var previews: some View {
        LocationMapView()
    }
}
