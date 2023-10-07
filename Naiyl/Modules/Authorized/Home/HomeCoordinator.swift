//
//  HomeCoordinator.swift
//  Naiyl
//
//  Created by ibaikaa on 8/10/23.
//

import SwiftUI
import Stinsen

final class HomeCoordinator: NavigationCoordinatable {
    var stack = NavigationStack(initial: \HomeCoordinator.start)
    
    @Root var start = makeStart
    
    init() { }
    
    private func makeStart() -> some View {
        HomeBuilder.create()
    }

}

