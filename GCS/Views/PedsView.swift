//
//  PedsView.swift
//  GCS
//
//  Created by Joshua Mularella on 12/29/21.
//

import SwiftUI

struct PedsView: View {
    @State private var selectedPedsEye = "Enter Score"
    @State private var selectedPedsVerbal = "Enter Score"
    @State private var selectedPedsMotor = "Enter Score"
    
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
                            Picker("Eye", selection: $selectedPedsEye) {
                            ForEach(pedsEyeScores, id: \.self) {
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
                    
                        if selectedPedsEye == "Enter Score" {
                            Text("Observe for spontaneous eye opening. Speak or shout if needed. Stimulate with fingertip pressure.")
                            .foregroundColor(.secondary)
                            .font(.subheadline)
                            .lineLimit(3)
                        } else if selectedPedsEye == "Spontaneous" {
                            Text("Open before stimulus")
                                .foregroundColor(.secondary)
                                .font(.subheadline)
                                .lineLimit(3)
                        } else if selectedPedsEye == "To Sound" {
                            Text("After spoken or shouted request")
                                .foregroundColor(.secondary)
                                .font(.subheadline)
                                .lineLimit(3)
                        } else if selectedPedsEye == "To Pressure" {
                            Text("After fingertip stimulus/pressure")
                                .foregroundColor(.secondary)
                                .font(.subheadline)
                                .lineLimit(3)
                        } else if selectedPedsEye == "None" {
                            Text("No opening at any time, no interfering factor")
                                .foregroundColor(.secondary)
                                .font(.subheadline)
                                .lineLimit(3)
                        } else if selectedPedsEye == "Non Testable" {
                            Text("Closed by local factor (ie eye swollen shut)")
                                .foregroundColor(.secondary)
                                .font(.subheadline)
                                .lineLimit(3)
                        }

                        Spacer()

                            if selectedPedsEye == "Spontaneous" {
                                Text("4")
                                .font(.headline)
                                .opacity(0.7)
                                .padding(.horizontal)
                            } else if selectedPedsEye == "To Sound" {
                                Text("3")
                                .font(.headline)
                                .opacity(0.7)
                                .padding(.horizontal)
                            } else if selectedPedsEye == "To Pressure" {
                                Text("2")
                                .font(.headline)
                                .opacity(0.7)
                                .padding(.horizontal)
                            } else if selectedPedsEye == "None" {
                                Text("1")
                                .font(.headline)
                                .opacity(0.7)
                                .padding(.horizontal)
                            } else if selectedPedsEye == "Non Testable" {
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
                            Picker("Verbal", selection: $selectedPedsVerbal) {
                            ForEach(pedsVerbalScores, id: \.self) {
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
                        if selectedPedsVerbal == "Enter Score" {
                            Text("Observe for spontaneous eye opening. Speak or shout if needed. Stimulate with fingertip pressure.")
                            .foregroundColor(.secondary)
                            .font(.subheadline)
                            .lineLimit(3)
                        } else if selectedPedsVerbal == "Coos, Babbles" {
                            Text("Correctly gives name, place and date")
                                .foregroundColor(.secondary)
                                .font(.subheadline)
                                .lineLimit(3)
                        } else if selectedPedsVerbal == "Irritable Cries" {
                            Text("Not oriented but communicating coherently")
                                .foregroundColor(.secondary)
                                .font(.subheadline)
                                .lineLimit(3)
                        } else if selectedPedsVerbal == "Cries To Pain" {
                            Text("Intelligible single words")
                                .foregroundColor(.secondary)
                                .font(.subheadline)
                                .lineLimit(3)
                        } else if selectedPedsVerbal == "Moans to Pain" {
                            Text("Only moans/groans")
                                .foregroundColor(.secondary)
                                .font(.subheadline)
                                .lineLimit(3)
                        } else if selectedPedsVerbal == "None" {
                            Text("No audible response, no interfering factor")
                                .foregroundColor(.secondary)
                                .font(.subheadline)
                                .lineLimit(3)
                        } else if selectedPedsVerbal == "Non Testable" {
                            Text("Factor interring with communication (ie intubated)")
                                .foregroundColor(.secondary)
                                .font(.subheadline)
                                .lineLimit(3)
                        }
                        
                        Spacer()

                        if selectedPedsVerbal == "Coos, Babbles" {
                            Text("5")
                            .font(.headline)
                            .opacity(0.7)
                            .padding(.horizontal)
                        } else if selectedPedsVerbal == "Irritable Cries" {
                            Text("4")
                            .font(.headline)
                            .opacity(0.7)
                            .padding(.horizontal)
                        } else if selectedPedsVerbal == "Cries To Pain" {
                            Text("3")
                            .font(.headline)
                            .opacity(0.7)
                            .padding(.horizontal)
                        } else if selectedPedsVerbal == "Moans to Pain" {
                            Text("2")
                            .font(.headline)
                            .opacity(0.7)
                            .padding(.horizontal)
                        } else if selectedPedsVerbal == "None" {
                            Text("1")
                            .font(.headline)
                            .opacity(0.7)
                            .padding(.horizontal)
                        } else if selectedPedsVerbal == "Non Testable" {
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
                            Picker("Motor", selection: $selectedPedsMotor) {
                            ForEach(pedsMotorScores, id: \.self) {
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
                        if selectedPedsMotor == "Enter Score" {
                            Text("Observe for spontaneous eye opening. Speak or shout if needed. Stimulate with fingertip pressure.")
                            .foregroundColor(.secondary)
                            .font(.subheadline)
                            .lineLimit(3)
                        } else if selectedPedsMotor == "Moves Purposefully" {
                            Text("Obeys 2-part request")
                                .foregroundColor(.secondary)
                                .font(.subheadline)
                                .lineLimit(3)
                        } else if selectedPedsMotor == "Withdraws To Touch" {
                            Text("Brings hands above clavicle to stimulus on head/neck")
                                .foregroundColor(.secondary)
                                .font(.subheadline)
                                .lineLimit(3)
                        } else if selectedPedsMotor == "Withdraws To Pain" {
                            Text("Bends arm rapidly but features not predominantly abnormal")
                                .foregroundColor(.secondary)
                                .font(.subheadline)
                                .lineLimit(3)
                        } else if selectedPedsMotor == "Abnormal Flexion" {
                            Text("Bends arm at elbow, features clearly predominantly abnormal")
                                .foregroundColor(.secondary)
                                .font(.subheadline)
                                .lineLimit(3)
                        } else if selectedPedsMotor == "Extension" {
                            Text("Extends arm at elbow")
                                .foregroundColor(.secondary)
                                .font(.subheadline)
                                .lineLimit(3)
                        } else if selectedPedsMotor == "None" {
                            Text("No movement in arm/legs, no interfering factor")
                                .foregroundColor(.secondary)
                                .font(.subheadline)
                                .lineLimit(3)
                        } else if selectedPedsMotor == "Non Testable" {
                            Text("Paralyzed or other limitingfactor")
                                .foregroundColor(.secondary)
                                .font(.subheadline)
                                .lineLimit(3)
                        }
                        Spacer()
                        
                        if selectedPedsMotor == "Moves Purposefully" {
                            Text("6")
                            .font(.headline)
                            .opacity(0.7)
                            .padding(.horizontal)
                        } else if selectedPedsMotor == "Withdraws To Touch" {
                            Text("5")
                            .font(.headline)
                            .opacity(0.7)
                            .padding(.horizontal)
                        }
                        else if selectedPedsMotor == "Withdraws To Pain" {
                            Text("4")
                            .font(.headline)
                            .opacity(0.7)
                            .padding(.horizontal)
                        } else if selectedPedsMotor == "Abnormal Flexion" {
                            Text("3")
                            .font(.headline)
                            .opacity(0.7)
                            .padding(.horizontal)
                        } else if selectedPedsMotor == "Extension" {
                            Text("2")
                            .font(.headline)
                            .opacity(0.7)
                            .padding(.horizontal)
                        } else if selectedPedsMotor == "None" {
                            Text("1")
                            .font(.headline)
                            .opacity(0.7)
                            .padding(.horizontal)
                        } else if selectedPedsMotor == "Non Testable" {
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
                                
                                if selectedPedsEye != "Enter Score" && selectedPedsVerbal != "Enter Score" && selectedPedsMotor != "Enter Score" {
                
                        Text("GCS Scale = E(4)V(5)M(6)")
                                .foregroundColor(.primary)
                                .font(.title3)
                                .fontWeight(.bold)
                                .padding(.horizontal)
                                .padding(.top)
                        if selectedPedsEye == "Non Testable" || selectedPedsVerbal == "Non Testable" || selectedPedsMotor == "Non Testable" {
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
                
            .navigationTitle("Pediatric GCS")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                    Button {
                        selectedPedsEye = "Enter Score"
                        selectedPedsVerbal = "Enter Score"
                        selectedPedsMotor = "Enter Score"
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
