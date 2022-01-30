//
//  AdultView.swift
//  GCS
//
//  Created by Joshua Mularella on 12/29/21.
//

import SwiftUI

struct AdultView: View {
    @State private var selectedEye = "Enter Score"
    @State private var selectedVerbal = "Enter Score"
    @State private var selectedMotor = "Enter Score"
    
    var body: some View {
        
        NavigationView {
            ZStack {
                
                BackgroundView()
            
                ScrollView {
                
                    VStack(alignment: .leading, spacing:0) {
                

                    Text("EYE OPENING")
                        .foregroundColor(.primary)
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding(.horizontal)
                        .padding(.top)
                
                    VStack(spacing:0) {
                    
                        HStack {
                        
                            Text("Calculate best response")
                                .foregroundColor(.primary)
                                .font(.subheadline)
                            Spacer()
                            Picker("Eye", selection: $selectedEye) {
                            ForEach(eyeScores, id: \.self) {
                                Text($0)
                            }
                        }
                            .pickerStyle(.menu)
                            .padding(.horizontal, 5)
                            .background(.blue)
                        }
                        .padding(.horizontal)
                        .background(.ultraThickMaterial) 
                    
                    
                    HStack {
                    
                        if selectedEye == "Enter Score" {
                            Text("Observe for spontaneous eye opening. Speak or shout if needed. Stimulate with fingertip pressure.")
                            .foregroundColor(.secondary)
                            .font(.subheadline)
                            .lineLimit(3)
                        } else if selectedEye == "Spontaneous" {
                            Text("Open before stimulus")
                                .foregroundColor(.secondary)
                                .font(.subheadline)
                                .lineLimit(3)
                        } else if selectedEye == "To Sound" {
                            Text("After spoken or shouted request")
                                .foregroundColor(.secondary)
                                .font(.subheadline)
                                .lineLimit(3)
                        } else if selectedEye == "To Pressure" {
                            Text("After fingertip stimulus/pressure")
                                .foregroundColor(.secondary)
                                .font(.subheadline)
                                .lineLimit(3)
                        } else if selectedEye == "None" {
                            Text("No opening at any time, no interfering factor")
                                .foregroundColor(.secondary)
                                .font(.subheadline)
                                .lineLimit(3)
                        } else if selectedEye == "Non Testable" {
                            Text("Closed by local factor (ie eye swollen shut)")
                                .foregroundColor(.secondary)
                                .font(.subheadline)
                                .lineLimit(3)
                        }

                        Spacer()

                            if selectedEye == "Spontaneous" {
                                Text("4")
                                .font(.headline)
                                .opacity(0.7)
                                .padding(.horizontal)
                            } else if selectedEye == "To Sound" {
                                Text("3")
                                .font(.headline)
                                .opacity(0.7)
                                .padding(.horizontal)
                            } else if selectedEye == "To Pressure" {
                                Text("2")
                                .font(.headline)
                                .opacity(0.7)
                                .padding(.horizontal)
                            } else if selectedEye == "None" {
                                Text("1")
                                .font(.headline)
                                .opacity(0.7)
                                .padding(.horizontal)
                            } else if selectedEye == "Non Testable" {
                                Text("NT")
                                .font(.headline)
                                .opacity(0.7)
                                .padding(.horizontal)
                            }
                        }
                    .padding()
                    .background(.ultraThickMaterial)
                }
                .background(.ultraThickMaterial)
                    
                    Text("VERBAL")
                        .foregroundColor(.primary)
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding(.horizontal)
                        .padding(.top)
                
                    VStack(spacing:0) {
                    
                    HStack {
                        
                            Text("Calculate best response")
                                .foregroundColor(.primary)
                                .font(.subheadline)
                            Spacer()
                            Picker("Verbal", selection: $selectedVerbal) {
                            ForEach(verbalScores, id: \.self) {
                                Text($0)
                            }
                            
                        }
                            .pickerStyle(.menu)
                            .padding(.horizontal, 5)
                            .background(.blue)
                        }
                        .padding(.horizontal)
                        .background(.ultraThickMaterial)
                    
                    
                    HStack {
                        if selectedVerbal == "Enter Score" {
                            Text("Check for interferring factors such as ET tube. Ask patient for their name, location and the month.")
                            .foregroundColor(.secondary)
                            .font(.subheadline)
                            .lineLimit(3)
                        } else if selectedVerbal == "Oriented" {
                            Text("Correctly gives name, place and date")
                                .foregroundColor(.secondary)
                                .font(.subheadline)
                                .lineLimit(3)
                        } else if selectedVerbal == "Confused" {
                            Text("Not oriented but communicating coherently")
                                .foregroundColor(.secondary)
                                .font(.subheadline)
                                .lineLimit(3)
                        } else if selectedVerbal == "Words" {
                            Text("Intelligible single words")
                                .foregroundColor(.secondary)
                                .font(.subheadline)
                                .lineLimit(3)
                        } else if selectedVerbal == "Sounds" {
                            Text("Only moans/groans")
                                .foregroundColor(.secondary)
                                .font(.subheadline)
                                .lineLimit(3)
                        } else if selectedVerbal == "None" {
                            Text("No audible response, no interfering factor")
                                .foregroundColor(.secondary)
                                .font(.subheadline)
                                .lineLimit(3)
                        } else if selectedVerbal == "Non Testable" {
                            Text("Factor interring with communication (ie intubated)")
                                .foregroundColor(.secondary)
                                .font(.subheadline)
                                .lineLimit(3)
                        }
                        
                        Spacer()

                        if selectedVerbal == "Oriented" {
                            Text("5")
                            .font(.headline)
                            .opacity(0.7)
                            .padding(.horizontal)
                        } else if selectedVerbal == "Confused" {
                            Text("4")
                            .font(.headline)
                            .opacity(0.7)
                            .padding(.horizontal)
                        } else if selectedVerbal == "Words" {
                            Text("3")
                            .font(.headline)
                            .opacity(0.7)
                            .padding(.horizontal)
                        } else if selectedVerbal == "Sounds" {
                            Text("2")
                            .font(.headline)
                            .opacity(0.7)
                            .padding(.horizontal)
                        } else if selectedVerbal == "None" {
                            Text("1")
                            .font(.headline)
                            .opacity(0.7)
                            .padding(.horizontal)
                        } else if selectedVerbal == "Non Testable" {
                            Text("NT")
                                .font(.headline)
                            .opacity(0.7)
                            .padding(.horizontal)
                        }
                    }
                    .padding()
                    .background(.ultraThickMaterial)
                }
                .background(.ultraThickMaterial)
                    
                    
                    Text("MOTOR")
                        .foregroundColor(.primary)
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding(.horizontal)
                        .padding(.top)
                
                    VStack(spacing:0) {
                    
                    HStack {
                        
                            Text("Calculate best response")
                                .foregroundColor(.primary)
                                .font(.subheadline)
                            Spacer()
                            Picker("Motor", selection: $selectedMotor) {
                            ForEach(motorScores, id: \.self) {
                                Text($0)
                            }
                            
                        }
                            .pickerStyle(.menu)
                            .padding(.horizontal, 5)
                            .background(.blue)
                        }
                        .padding(.horizontal)
                        .background(.ultraThickMaterial)
                    
                    
                    HStack {
                        if selectedMotor == "Enter Score" {
                            Text("Ask patient to perform 2-step action. Stimulate centrally if needed with trapzesius pinch or supraorbital notch pressure")
                            .foregroundColor(.secondary)
                            .font(.subheadline)
                            .lineLimit(3)
                        } else if selectedMotor == "Obeys Commands" {
                            Text("Obeys 2-part request")
                                .foregroundColor(.secondary)
                                .font(.subheadline)
                                .lineLimit(3)
                        } else if selectedMotor == "Localizing" {
                            Text("Brings hands above clavicle to stimulus on head/neck")
                                .foregroundColor(.secondary)
                                .font(.subheadline)
                                .lineLimit(3)
                        } else if selectedMotor == "Normal Flexion" {
                            Text("Bends arm rapidly but features not predominantly abnormal")
                                .foregroundColor(.secondary)
                                .font(.subheadline)
                                .lineLimit(3)
                        } else if selectedMotor == "Abnormal Flexion" {
                            Text("Bends arm at elbow, features clearly predominantly abnormal")
                                .foregroundColor(.secondary)
                                .font(.subheadline)
                                .lineLimit(3)
                        } else if selectedMotor == "Extension" {
                            Text("Extends arm at elbow")
                                .foregroundColor(.secondary)
                                .font(.subheadline)
                                .lineLimit(3)
                        } else if selectedMotor == "None" {
                            Text("No movement in arm/legs, no interfering factor")
                                .foregroundColor(.secondary)
                                .font(.subheadline)
                                .lineLimit(3)
                        } else if selectedMotor == "Non Testable" {
                            Text("Paralyzed or other limitingfactor")
                                .foregroundColor(.secondary)
                                .font(.subheadline)
                                .lineLimit(3)
                        }
                        Spacer()
                        
                        if selectedMotor == "Obeys Commands" {
                            Text("6")
                            .font(.headline)
                            .opacity(0.7)
                            .padding(.horizontal)
                        } else if selectedMotor == "Localizing" {
                            Text("5")
                            .font(.headline)
                            .opacity(0.7)
                            .padding(.horizontal)
                        }
                        else if selectedMotor == "Normal Flexion" {
                            Text("4")
                            .font(.headline)
                            .opacity(0.7)
                            .padding(.horizontal)
                        } else if selectedMotor == "Abnormal Flexion" {
                            Text("3")
                            .font(.headline)
                            .opacity(0.7)
                            .padding(.horizontal)
                        } else if selectedMotor == "Extension" {
                            Text("2")
                            .font(.headline)
                            .opacity(0.7)
                            .padding(.horizontal)
                        } else if selectedMotor == "None" {
                            Text("1")
                            .font(.headline)
                            .opacity(0.7)
                            .padding(.horizontal)
                        } else if selectedMotor == "Non Testable" {
                            Text("NT")
                                .font(.headline)
                            .opacity(0.7)
                            .padding(.horizontal)
                        }
                    }
                    .padding()
                    .background(.ultraThickMaterial)
                }
                .background(.ultraThickMaterial)
                .padding(.bottom)
                    
                        Spacer()
                        
                        HStack {
                                
                        Spacer()
                            
                            VStack(alignment: .center) {
                                
                                if selectedEye != "Enter Score" && selectedVerbal != "Enter Score" && selectedMotor != "Enter Score" {
                
                        Text("GCS Scale = E(4)V(5)M(6)")
                                .foregroundColor(.primary)
                                .font(.title3)
                                .fontWeight(.bold)
                                .padding(.horizontal)
                                .padding(.top)
                        if selectedEye == "Non Testable" || selectedVerbal == "Non Testable" || selectedMotor == "Non Testable" {
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
                        selectedEye = "Enter Score"
                        selectedVerbal = "Enter Score"
                        selectedMotor = "Enter Score"
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
