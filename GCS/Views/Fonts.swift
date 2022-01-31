//
//  Fonts.swift
//  GCS
//
//  Created by Ben Gottlieb on 1/30/22.
//

import SwiftUI

extension Font {
	var scalingFactor: Double {
		let preferredSize = UserDefaults.standard.double(forKey: "adjustedFontSize")
		if preferredSize == 0 { return 1.0 }
		return (preferredSize) / 14.0
	}
	var scaled: Font {
		Font.system(size: systemSize * scalingFactor)
	}
	
	var systemSize: Double {
		switch self {
		case .largeTitle: return 32
		case .title: return 22
		case .title2: return 20
		case .title3: return 18
		case .headline: return 16
		case .subheadline: return 15
		case .body: return 14
		case .callout: return 13
		case .footnote: return 12
		case .caption: return 12
		case .caption2: return 10
		default:
			return 14
		}
	}
}
