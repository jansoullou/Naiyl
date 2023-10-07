//
//  TabbedItems.swift
//  Naiyl
//
//  Created by ibaikaa on 8/10/23.
//

import SwiftUI

enum TabbedItems: Int, CaseIterable {
    case home = 0
    case favorite = 1
    case profile = 2
    
    var title: String {
        switch self {
        case .home:
            return "Home"
        case .favorite:
            return "Favorite"
        case .profile:
            return "Profile"
        }
    }
    
    var imageName: String {
        switch self {
        case .home:
            return "house"
        case .favorite:
            return "heart"
        case .profile:
            return "person"
        }
    }
    
    var selectedImageName: String {
        switch self {
        case .home:
            return "house.fill"
        case .favorite:
            return "heart.fill"
        case .profile:
            return "person.fill"
        }
    }
    
}

