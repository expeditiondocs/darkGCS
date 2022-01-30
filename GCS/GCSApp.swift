//
//  GCSApp.swift
//  GCS
//
//  Created by Joshua Mularella on 12/21/21.
//

import SwiftUI

@main
struct GCSApp: App {
    @AppStorage("isDarkMode") private var isDarkMode = true
    
    var body: some Scene {
        WindowGroup {
            ContentView()
            
                .preferredColorScheme(isDarkMode ? .dark : .light)
                .accentColor(.primary)
        }
    }
}
