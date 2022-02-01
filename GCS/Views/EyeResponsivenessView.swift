//
//  EyeResponsivenessView.swift
//  GCS
//
//  Created by Ben Gottlieb on 1/31/22.
//

import SwiftUI

struct EyeResponsivenessView: View {
	@Binding var selectedEye: EyeResponsiveness
	var options: [EyeResponsiveness] = EyeResponsiveness.adultOptions
	let fontSize: Double

    var body: some View {
		VStack() {
			Text("EYE OPENING")
				.foregroundColor(.primary)
				.font(.title3.scaled(for: fontSize))
				.fontWeight(.bold)
				.frame(maxWidth: .infinity, alignment: .leading)
				.padding([.horizontal, .top])
			
			VStack(spacing:0) {
				HStack {
					Text("Calculate best response")
						.foregroundColor(.primary)
						.font(.subheadline.scaled(for: fontSize))
					Spacer()
					Picker("Eye", selection: $selectedEye) {
						ForEach(options, id: \.self) {
							Text($0.title)
								.font(.body.scaled(for: fontSize))
						}
					}
					.pickerStyle(.menu)
					.padding(.horizontal, 5)
					.background(.blue)
				}
				.padding(.horizontal)
				.background(.ultraThickMaterial)
				
				
				HStack {
					Text(selectedEye.label)
						.foregroundColor(.secondary)
						.font(.subheadline.scaled(for: fontSize))
						.lineLimit(3)
					
					Spacer()
					Text(selectedEye.scoreString)
						.font(.headline.scaled(for: fontSize))
						.opacity(0.7)
						.padding(.horizontal)
				}
				.padding()
				.background(.ultraThickMaterial)
			}
			.background(.ultraThickMaterial)
		}
	}
}

struct EyeResponsivenessView_Previews: PreviewProvider {
    static var previews: some View {
		 EyeResponsivenessView(selectedEye: .constant(.unchecked), fontSize: 14)
    }
}
