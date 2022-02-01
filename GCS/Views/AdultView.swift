//
//  AdultView.swift
//  GCS
//
//  Created by Joshua Mularella on 12/29/21.
//

import SwiftUI

struct AdultView: View {
	@State private var selectedEye = EyeResponsiveness.unchecked
	@State private var selectedVerbal = VerbalResponsiveness.unchecked
	@State private var selectedMotor = MotorResponsiveness.unchecked
	
	let fontSize: Double

    var body: some View {
        
        NavigationView {
			  ZStack {
				  BackgroundView()
				  ScrollView {
					  VStack(alignment: .leading, spacing: 0) {
						  EyeResponsivenessView(selectedEye: $selectedEye, fontSize: fontSize)
						  VerbalResponsivenessView(selectedVerbal: $selectedVerbal, fontSize: fontSize)
						  MotorResponsivenessView(selectedMotor: $selectedMotor, fontSize: fontSize)

						  Spacer()
						  
						  HStack {
							  
							  Spacer()
							  
							  ScoreView(selectedEye: selectedEye, selectedVerbal: selectedVerbal, selectedMotor: selectedMotor)

							  Spacer()
						  }
					  }
					  
					  .navigationTitle("Glasgow Coma Scale")
					  .navigationBarTitleDisplayMode(.inline)
					  .toolbar {
						  Button {
							  selectedEye = .unchecked
							  selectedVerbal = .unchecked
							  selectedMotor = .unchecked
						  }
					  label: {
						  Image(systemName: "arrow.clockwise.circle")
							  .foregroundColor(.blue)
					  }
					  }
				  }
			  }
        }
    }
}
