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

    var body: some View {
		 VStack() {
			 Text("VERBAL")
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
						 Picker("Verbal", selection: $selectedVerbal) {
							 ForEach(options, id: \.self) {
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
						 Text(selectedVerbal.label)
							 .foregroundColor(.secondary)
							 .font(.subheadline.scaled)
							 .lineLimit(3)
						 
						 Spacer()
						 
						 Text(selectedVerbal.scoreString)
							 .font(.headline.scaled)
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
		 VerbalResponsivenessView(selectedVerbal: .constant(.unchecked))
    }
}
