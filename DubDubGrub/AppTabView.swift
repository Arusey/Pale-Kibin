//
//  AppTabView.swift
//  DubDubGrub
//
//  Created by Kevin Lagat on 22/07/2021.
//

import SwiftUI

struct AppTabView: View {
    var body: some View {
        TabView {
            LocationMapView()
                .tabItem {
                    Label("Map", systemImage: "map")
                        
                }
            LocationListView()
                .tabItem {
                    Label("Locations", systemImage: "building")
                        
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                        
                }
        }
        .accentColor(.brandPrimary)
        
    }
}

struct AppTabView_Previews: PreviewProvider {
    static var previews: some View {
        AppTabView()
    }
}
