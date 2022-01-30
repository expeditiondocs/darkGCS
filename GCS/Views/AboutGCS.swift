//
//  AboutGCS.swift
//  GCS
//
//  Created by Joshua Mularella on 1/28/22.
//

import SwiftUI

struct AboutGCS: View {
    
    var body: some View {
        
            ZStack {
                
                BackgroundView()
            
                ScrollView {
                
                    VStack(alignment: .leading, spacing:0) {
                

                    Text("Glasgow Coma Scale")
                        .foregroundColor(.primary)
                        .font(.headline)
                        .padding()
                
                    VStack() {
                    
                        VStack(alignment: .leading) {
                        Text("The Glasgow Coma Scale (GCS) was first described by Sir Graham Teasdale and Bryan Jennett in 1974 as a way to communicate about the level of consciousness of patients with acute traumatic brain injury. It has evolved into an important tool for any patient with impaired consciousness. It is important to note that the GCS should complement, NOT replace clinical assessment of the patient.")
                            Spacer(minLength: 20)
                        Text("The Glasgow Coma Scale Score (GCS score) was later developed in 1979 to combine the findings of the three components of the GCS into a single index. Possible values range from 3-15.")
                            Spacer(minLength: 20)
                        Text("A modified version of the GCS for pediatric patients younger than 2 years old came next in 1982.")
                            Spacer(minLength: 20)
                        Text("Over the last 40 years certain parts of the GCS have been improved for increaed consistency. A structured approach to the GCS was published in 2014. For more information, go to:")
                        }
                        .foregroundColor(.primary)
                        .font(.subheadline)
                        .background(.ultraThickMaterial)
                        .padding()
                        Spacer()
                        Link("https://www.glasgowcomascale.org", destination: URL(string: "https://www.glasgowcomascale.org")!)
                            .font(.subheadline)
                            .foregroundColor(.blue)
                        Spacer()
                }
                .background(.ultraThickMaterial)
                        
                        Spacer()
                        Text("References")
                            .foregroundColor(.primary)
                            .font(.headline)
                            .padding()
                    
                        VStack() {
                        
                            VStack(alignment: .leading) {
                            Text("1. Teasdale G et al. Assessment of coma and impaired consciousness. A practical scale. Lancet. 1974.")
                                    .italic()
                                Spacer(minLength: 20)
                            Text("2. Teasdale G et al. Adding up the Glasgow Coma Score. Acta Neurochir Suppl(Wien). 1979.")
                                    .italic()
                                Spacer(minLength: 20)
                            Text("3. Simpson DA et al. Pediatric coma scale. Lancet. 1982.")
                                    .italic()
                                Spacer(minLength: 20)
                            Text("4. Teasdale G et al. The Glasgow Coma Scale: an update after 40 years. Nursing Times. 2014.")
                                    .italic()
                            }
                            .foregroundColor(.primary)
                            .font(.caption)
                            .background(.ultraThickMaterial)
                            .padding()
                    }
                    .background(.ultraThickMaterial)
                }
            }
        }
            .navigationTitle("About GCS")
            .navigationBarTitleDisplayMode(.inline)
    }
}
