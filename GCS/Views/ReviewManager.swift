//
//  ReviewManager.swift
//  GCS
//
//  Created by Joshua Mularella on 1/28/22.
//

import Foundation
import StoreKit

enum AppStoreReviewManager {
    static func requestReviewIfAppropriate() {
        if let scene = UIApplication.shared.connectedScenes.first(where: { $0.activationState == .foregroundActive }) as? UIWindowScene {
             SKStoreReviewController.requestReview(in: scene)
        }
    }
}
