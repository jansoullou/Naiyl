//
//  LaunchScreenBuilder.swift
//  Naiyl
//
//  Created by ibaikaa on 8/10/23.
//

import SwiftUI

struct LaunchScreenBuilder: BaseBuilder {
    static func create() -> some View {
        let viewModel = LaunchScreenViewModel()
        return LaunchScreen(viewModel: viewModel)
    }
}
