//
//  DetailView.swift
//  GCS
//
//  Created by Joshua Mularella on 1/11/22.
//

import SwiftUI

struct DetailView: View {
    
    @Binding var isDetailViewShowing: Bool
    
    var body: some View {
        ScrollView {
            
        Text("Hello World")
            Text("Hello World")
            Text("Hello World")
            Text("Hello World")
            Text("Hello World")
            Text("Hello World")
            Text("Hello World")
            
        }
        .frame(width: 320, height: 600)
        .background(.ultraThickMaterial)
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button {
            isDetailViewShowing = false
        } label: {
            ZStack {
                Circle()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.black)
                    .opacity(0.4)
                Image(systemName: "xmark")
                    .imageScale(.small)
                    .frame(width: 44, height: 44)
                    .foregroundColor(.secondary)
            }
        }, alignment: .topTrailing)
    }
}
