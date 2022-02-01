//
//  VerbalResponsivenessView.swift
//  GCS
//
//  Created by Ben Gottlieb on 1/31/22.
//

import SwiftUI

struct VerbalResponsivenessView: View {
	@Binding var selectedVerbal: VerbalResponsiveness
	var options: [VerbalResponsiveness] = VerbalResponsiveness.adultOptions
	let fontSize: Double
    var body: some View {
		 VStack() {
			 Text("VERBAL")
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
						 Picker("Verbal", selection: $selectedVerbal) {
							 ForEach(options, id: \.self) {
								 Text($0.title)
									 .font(.body.scaled(for: fontSize))
									 .bold()
							 }
							 
						 }
						 .pickerStyle(.menu)
						 .padding(.horizontal, 5)
						 .background(.blue)
					 }
					 .padding(.horizontal)
					 .background(.ultraThickMaterial)
					 
					 
					 HStack {
						 Text(selectedVerbal.label)
							 .foregroundColor(.secondary)
							 .font(.subheadline.scaled(for: fontSize))
							 .lineLimit(3)
						 
						 Spacer()
						 
						 Text(selectedVerbal.scoreString)
							 .font(.headline.scaled(for: fontSize))
							 .opacity(0.7)
							 .padding(.horizontal)
					 }
					 .padding()
					 .background(.ultraThickMaterial)
				 }
		 }
	 }
}

struct VerbalResponsivenessView_Previews: PreviewProvider {
    static var previews: some View {
		 VerbalResponsivenessView(selectedVerbal: .constant(.unchecked), fontSize: 14)
    }
}
