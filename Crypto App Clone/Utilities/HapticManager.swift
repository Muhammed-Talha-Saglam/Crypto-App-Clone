//
//  HapticManager.swift
//  Crypto App Clone
//
//  Created by Muhammed Talha Sağlam on 5.05.2022.
//

import Foundation
import UIKit

class HapticManager {
    
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
}
