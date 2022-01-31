//
//  MotorResponsivenessView.swift
//  GCS
//
//  Created by Ben Gottlieb on 1/31/22.
//

import SwiftUI

struct MotorResponsivenessView: View {
	@Binding var selectedMotor: MotorResponsiveness
    var body: some View {
		 VStack() {
			 Text("MOTOR")
				 .foregroundColor(.primary)
				 .font(.title3.scaled)
				 .fontWeight(.bold)
				 .frame(maxWidth: .infinity, alignment: .leading)
				 .padding([.horizontal, .top])
			 
			 VStack(spacing:0) {
				 HStack {
					 Text("Calculate best response")
						 .foregroundColor(.primary)
						 .font(.subheadline.scaled)
					 Spacer()
					 Picker("Motor", selection: $selectedMotor) {
						 ForEach(MotorResponsiveness.allCases, id: \.self) {
							 Text($0.title)
						 }
						 
					 }
					 .pickerStyle(.menu)
					 .padding(.horizontal, 5)
					 .background(.blue)
				 }
				 .padding(.horizontal)
				 .background(.ultraThickMaterial)
				 
				 
				 HStack {
					 Text(selectedMotor.label)
						 .foregroundColor(.secondary)
						 .font(.subheadline.scaled)
						 .lineLimit(3)

					 Spacer()
					 
					 Text(selectedMotor.scoreString)
						 .font(.headline.scaled)
						 .opacity(0.7)
						 .padding(.horizontal)

				 }
				 .padding()
				 .background(.ultraThickMaterial)
			 }
			 .background(.ultraThickMaterial)
			 .padding(.bottom)
		 }
	 }
}

struct MotorResponsivenessView_Previews: PreviewProvider {
    static var previews: some View {
		 MotorResponsivenessView(selectedMotor: .constant(.unchecked))
    }
}
