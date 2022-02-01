//
//  ContentView.swift
//  GCS
//
//  Created by Joshua Mularella on 12/21/21.
//

import SwiftUI

struct ContentView: View {
	@AppStorage("adjustedFontSize") private var fontSize = 14.0
	
	var body: some View {
		TabView {
			AdultView(fontSize: fontSize)
				.tabItem {
					Image(systemName: "brain")
					Text("GCS")
				}
			
			PedsView(fontSize: fontSize)
				.tabItem {
					Image(systemName: "brain.head.profile")
					Text("Peds GCS")
				}
			
			SettingsView(fontSize: $fontSize)
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
