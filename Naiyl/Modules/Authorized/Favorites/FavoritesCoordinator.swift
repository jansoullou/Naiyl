//
//  FavoritesCoordinator.swift
//  Naiyl
//
//  Created by ibaikaa on 8/10/23.
//

import SwiftUI
import Stinsen

final class FavoritesCoordinator: NavigationCoordinatable {
    var stack = NavigationStack(initial: \FavoritesCoordinator.start)
    
    @Root var start = makeStart
    
    init() { }
    
    private func makeStart() -> some View {
        FavoritesBuilder.create()
    }

}


