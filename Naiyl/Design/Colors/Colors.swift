//
//  Colors.swift
//  Naiyl
//
//  Created by ibaikaa on 8/10/23.
//

import SwiftUI

enum PrimaryColor: UInt32 {
    case primaryBlack = 0x000000
    case primaryWhite = 0xFFFFFF
    case primaryGrayDark = 0x999BA3
    case backgroundColor = 0xF7F6F9
    
    case clear = 100001
}

class OpacityColor {
   static let opacity1: CGFloat = 1.0
   static let opacity80: CGFloat = 0.8
   static let opacity60: CGFloat = 0.6
   static let opacity50: CGFloat = 0.5
   static let opacity40: CGFloat = 0.4
   static let opacity30: CGFloat = 0.3
   static let opacity20: CGFloat = 0.2
   static let opacity10: CGFloat = 0.1
   static let opacity08: CGFloat = 0.08
   static let opacity0001: CGFloat = 0.001
}

class AppColors {
    static func getColor(
        _ color: PrimaryColor,
        opacity: CGFloat = OpacityColor.opacity1
    ) -> Color {
        guard color != .clear else {
            return Color.clear
        }

        return Color(hex: color.rawValue, opacity: opacity)
    }
    
    static func getUIColor(
        _ color: PrimaryColor,
        opacity: CGFloat = OpacityColor.opacity1
    ) -> UIColor {
        guard color != .clear else {
            return UIColor.clear
        }
        
        return UIColor(rgb: Int(color.rawValue))
    }
    
}

