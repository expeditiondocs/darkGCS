//
//  DiagnosticEnums.swift
//  GCS
//
//  Created by Ben Gottlieb on 1/31/22.
//

import Foundation

enum MotorResponsiveness: String, CaseIterable { case unchecked, uncheckedPede, obeysCommands, localizing, normalFlexion, abnormalFlexion, armExtension, movesPurposefully, withdrawsToTouch, withdrawsToPain, notResponsive, nonTestable
	
	var isUnchecked: Bool { self == .unchecked || self == .uncheckedPede }
	static let adultOptions: [MotorResponsiveness] = [.unchecked, .obeysCommands, .localizing, .normalFlexion, .abnormalFlexion, .armExtension, .notResponsive, .nonTestable]
	static let pedeOptions: [MotorResponsiveness] = [.uncheckedPede, .movesPurposefully, .withdrawsToTouch, .withdrawsToPain, .abnormalFlexion, .armExtension, .notResponsive, .nonTestable]

	var title: String {
		switch self {
		case .unchecked, .uncheckedPede: return "Enter Score"
		case .obeysCommands: return "Obeys Commands"
		case .localizing: return "Localizing"
		case .normalFlexion: return "Normal Flexion"
		case .abnormalFlexion: return "Abnormal Flexion"
		case .armExtension: return "Extension"
		case .movesPurposefully: return "Moves Purposefully"
		case .withdrawsToTouch: return "Withdraws to Touch"
		case .withdrawsToPain: return "Withdraws to Pain"
		case .notResponsive: return "None"
		case .nonTestable: return "Non-Testable"
		}
	}

	var label: String {
		switch self {
		case .unchecked: return "Observe for spontaneous eye opening. Speak or shout if needed. Stimulate with fingertip pressure."
		case .uncheckedPede: return "Observe for spontaneous eye opening. Speak or shout if needed. Stimulate with fingertip pressure."
		case .obeysCommands: return "Obeys 2-part request"
		case .localizing: return "Brings hands above clavicle to stimulus on head/neck"
		case .normalFlexion: return "Bends arm rapidly but features not predominantly abnormal"
		case .abnormalFlexion: return "Bends arm at elbow, features clearly predominantly abnormal"
		case .armExtension: return "Extends arm at elbow"
		case .movesPurposefully: return "Moves with a purpose"
		case .withdrawsToTouch: return "Withdraws to Touch"
		case .withdrawsToPain: return "Withdraws to Pain"
		case .notResponsive: return "No movement in arm/legs, no interfering factor"
		case .nonTestable: return "Paralyzed or other limiting factor"
		}
	}
	
	var scoreString: String {
		switch self {
		case .unchecked, .uncheckedPede: return ""
		case .nonTestable: return "NT"
		default: return "\(score)"
		}
	}
	
	var score: Int {
		switch self {
		case .obeysCommands, .movesPurposefully: return 6
		case .localizing, .withdrawsToTouch: return 5
		case .normalFlexion, .withdrawsToPain: return 4
		case .abnormalFlexion: return 3
		case .armExtension: return 2
		case .notResponsive: return 1
		default: return 0
		}
	}
}

enum VerbalResponsiveness: String, CaseIterable { case unchecked, uncheckedPede, oriented, confused, words, sounds, coosBabbles, irritableCries, criesToPain, moansToPain, notResponsive, nonTestable
	
	var isUnchecked: Bool { self == .unchecked || self == .uncheckedPede }
	static let adultOptions: [VerbalResponsiveness] = [.unchecked, .oriented, .confused, .words, .sounds, .notResponsive, .nonTestable]
	static let pedeOptions: [VerbalResponsiveness] = [.uncheckedPede, .coosBabbles, .irritableCries, .criesToPain, .moansToPain, .notResponsive, .nonTestable]
	var title: String {
		switch self {
		case .unchecked: return "Enter Score"
		case .uncheckedPede: return "Enter Score"
		case .oriented: return "Oriented"
		case .confused: return "Confused"
		case .words: return "Words"
		case .sounds: return "Sounds"
		case .coosBabbles: return "Coos, babbles"
		case .irritableCries: return "Irritable Cries"
		case .criesToPain: return "Cries to pain"
		case .moansToPain: return "Moans to pain"
		case .notResponsive: return "None"
		case .nonTestable: return "Non-Testable"
		}
	}

	var label: String {
		switch self {
		case .unchecked: return "Check for interferring factors such as ET tube. Ask patient for their name, location and the month."
		case .uncheckedPede: return "Observe for spontaneous eye opening. Speak or shout if needed. Stimulate with fingertip pressure"
		case .oriented: return "Correctly gives name, place, and date"
		case .confused: return "Not oriented, but communicating coherently"
		case .words: return "Intelligible single words"
		case .sounds: return "Only moans/groans"
		case .coosBabbles: return "Coos or babbles"
		case .irritableCries: return "Infant irritable cries"
		case .criesToPain: return "Cries in response to pain stimulus"
		case .moansToPain: return "Moans in response to pain stimulus"
		case .notResponsive: return "No audible response, no interfering factor"
		case .nonTestable: return "Factor interring with communication (ie. intubated)"
		}
	}
	
	var scoreString: String {
		switch self {
		case .unchecked, .uncheckedPede: return ""
		case .nonTestable: return "NT"
		default: return "\(score)"
		}
	}
	
	var score: Int {
		switch self {
		case .oriented, .coosBabbles: return 5
		case .confused, .irritableCries: return 4
		case .words, .criesToPain: return 3
		case .sounds, .moansToPain: return 2
		case .notResponsive: return 1
		default: return 0
		}
	}
}

enum EyeResponsiveness: String, CaseIterable { case unchecked, uncheckedPede, spontaneous, sound, pressure, notResponsive, nonTestable
	
	var isUnchecked: Bool { self == .unchecked || self == .uncheckedPede }
	static let adultOptions: [EyeResponsiveness] = [.unchecked, .spontaneous, .sound, .pressure, .notResponsive, .nonTestable]
	static let pedeOptions: [EyeResponsiveness] = [.uncheckedPede, .spontaneous, .sound, .pressure, .notResponsive, .nonTestable]

	var title: String {
		switch self {
		case .unchecked, .uncheckedPede: return "Enter Score"
		case .spontaneous: return "Spontaneous"
		case .sound: return "To Sound"
		case .pressure: return "To Pressure"
		case .notResponsive: return "None"
		case .nonTestable: return "Non-Testable"
		}
	}

	var label: String {
		switch self {
		case .unchecked: return "Observe for spontaneous eye opening. Speak or shout if needed. Stimulate with fingertip pressure."
		case .uncheckedPede: return "Observe for spontaneous eye opening. Speak or shout if needed. Stimulate with fingertip pressure"
		case .spontaneous: return "Open before stimulus"
		case .sound: return "After spoken or shouted request"
		case .pressure: return "After fingertip stimulus/pressure"
		case .notResponsive: return "No opening at any time, no interfering factor"
		case .nonTestable: return "Closed by local factor (ie. eye swollen shut)"
		}
	}
	
	var scoreString: String {
		switch self {
		case .unchecked, .uncheckedPede: return ""
		case .nonTestable: return "NT"
		default: return "\(score)"
		}
	}
	
	var score: Int {
		switch self {
		case .spontaneous: return 4
		case .sound: return 3
		case .pressure: return 2
		case .notResponsive: return 1
		default: return 0
		}
	}
}
