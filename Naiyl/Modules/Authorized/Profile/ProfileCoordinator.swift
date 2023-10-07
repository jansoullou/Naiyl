//
//  ProfileCoordinator.swift
//  Naiyl
//
//  Created by ibaikaa on 8/10/23.
//

import SwiftUI
import Stinsen

final class ProfileCoordinator: NavigationCoordinatable {
    var stack = NavigationStack(initial: \ProfileCoordinator.start)
    
    @Root var start = makeStart
    
    init() { }
    
    private func makeStart() -> some View {
        ProfileBuilder.create()
    }

}
