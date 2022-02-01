//
//  ScoreView.swift
//  GCS
//
//  Created by Ben Gottlieb on 1/31/22.
//

import SwiftUI

struct ScoreView: View {
	let selectedEye: EyeResponsiveness
	let selectedVerbal: VerbalResponsiveness
	let selectedMotor: MotorResponsiveness
	
	var totalScore: Int {
		selectedEye.score + selectedVerbal.score + selectedMotor.score
	}
	var body: some View {
		VStack(alignment: .center) {
			
			if !selectedEye.isUnchecked && !selectedVerbal.isUnchecked && !selectedMotor.isUnchecked {
				
				Text("GCS Scale = E(\(selectedEye.scoreString)) V(\(selectedVerbal.scoreString)) M(\(selectedMotor.scoreString))")
					.foregroundColor(.primary)
					.font(.title3)
					.fontWeight(.bold)
					.padding(.horizontal)
					.padding(.top)
				if selectedEye == .nonTestable || selectedVerbal == .nonTestable || selectedMotor == .nonTestable {
					Text("Unable to calculate total GCS Score since individual scores are non-testable")
						.foregroundColor(.primary)
						.font(.headline)
						.italic()
						.padding(.horizontal)
						.padding(.top)
				} else {
					Text("GCS Score = \(totalScore)")
						.foregroundColor(.primary)
						.font(.headline)
						.padding(.horizontal)
						.padding(.top)
				}
				
			}
		}    }
}

struct ScoreView_Previews: PreviewProvider {
	static var previews: some View {
		ScoreView(selectedEye: .unchecked, selectedVerbal: .unchecked, selectedMotor: .unchecked)
	}
}
