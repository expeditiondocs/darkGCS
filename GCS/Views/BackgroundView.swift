//
//  BackgroundView.swift
//  GCS
//
//  Created by Joshua Mularella on 1/16/22.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
       
        LinearGradient.init(colors: [CustomColor.myBackgroundColor, CustomColor.myGradientColor], startPoint: .leading, endPoint: .bottomTrailing)
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
