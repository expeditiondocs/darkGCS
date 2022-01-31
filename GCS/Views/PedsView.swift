//
//  PedsView.swift
//  GCS
//
//  Created by Joshua Mularella on 12/29/21.
//

import SwiftUI

struct PedsView: View {
	@State private var selectedEye = EyeResponsiveness.uncheckedPede
	@State private var selectedVerbal = VerbalResponsiveness.uncheckedPede
	@State private var selectedMotor = MotorResponsiveness.uncheckedPede
	
	var body: some View {
		NavigationView {
			ZStack {
				BackgroundView()
				
				ScrollView {
					VStack(alignment: .leading, spacing: 0) {
						EyeResponsivenessView(selectedEye: $selectedEye, options: EyeResponsiveness.pedeOptions)
						VerbalResponsivenessView(selectedVerbal: $selectedVerbal, options: VerbalResponsiveness.pedeOptions)
						MotorResponsivenessView(selectedMotor: $selectedMotor, options: MotorResponsiveness.pedeOptions)


						ScoreView(selectedEye: selectedEye, selectedVerbal: selectedVerbal, selectedMotor: selectedMotor)
					}
					Spacer()
				}
			}
			.navigationTitle("Pediatric GCS")
			.navigationBarTitleDisplayMode(.inline)
			.toolbar {
				Button(action: {
					selectedEye = .uncheckedPede
					selectedVerbal = .uncheckedPede
					selectedMotor = .uncheckedPede
				}) {
					Image(systemName: "arrow.clockwise.circle")
						.foregroundColor(.blue)
				}
			}
			
		}
	}
}
