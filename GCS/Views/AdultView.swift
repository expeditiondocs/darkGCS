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
	@AppStorage("adjustedFontSize") private var fontSize = 14.0

    var body: some View {
        
        NavigationView {
			  ZStack {
				  BackgroundView()
				  ScrollView {
					  VStack(alignment: .leading, spacing:0) {
						  EyeResponsivenessView(selectedEye: $selectedEye)
						  VerbalResponsivenessView(selectedVerbal: $selectedVerbal)
						  MotorResponsivenessView(selectedMotor: $selectedMotor)

						  
						  Spacer()
						  
						  HStack {
							  
							  Spacer()
							  
							  VStack(alignment: .center) {
								  
								  if selectedEye != .unchecked && selectedVerbal != .unchecked && selectedMotor != .unchecked {
									  
									  Text("GCS Scale = E(4)V(5)M(6)")
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
										  Text("GCS Score = 15")
											  .foregroundColor(.primary)
											  .font(.headline)
											  .padding(.horizontal)
											  .padding(.top)
									  }
									  
								  }
							  }
							  .padding(.bottom)
							  .background(.ultraThickMaterial)
							  
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
