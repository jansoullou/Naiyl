//
//  HapticService.swift
//  Naiyl
//
//  Created by ibaikaa on 8/10/23.
//

import UIKit

public final class HapticService {
    public static func generateHaptic(
        _ style: UIImpactFeedbackGenerator.FeedbackStyle,
        intensity: CGFloat = 1
    ) {
       let generator = UIImpactFeedbackGenerator(style: style)
       generator.impactOccurred(intensity: intensity)
    }
}
