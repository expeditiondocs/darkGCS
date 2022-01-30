//
//  ContentView.swift
//  GCS
//
//  Created by Joshua Mularella on 12/21/21.
//

import SwiftUI

struct ContentView: View {
    
var body: some View {
    
        TabView {
            
            AdultView ()
                .tabItem {
                    Image(systemName: "brain")
                    Text("GCS")
                }
            
            PedsView()
                .tabItem {
                    Image(systemName: "brain.head.profile")
                    Text("Peds GCS")
                }
            
            SettingsView ()
                .tabItem {
                    Image(systemName: "gearshape.2")
                    Text("Settings")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
