//
//  RootCoordinator.swift
//  Naiyl
//
//  Created by ibaikaa on 8/10/23.
//

import UIKit
import SwiftUI
import Stinsen

final class RootCoordinator: NavigationCoordinatable {
    var stack = NavigationStack(initial: \RootCoordinator.start)
    
    @Root var start = makeStart
    @Route(.push) var toMain = makeMain
    
    public init() { }
    
    private func makeStart() -> some View {
        LaunchScreenBuilder.create()
    }
    
    private func makeMain() -> some View {
        MainTabBarBuilder.create()
    }
    
}

