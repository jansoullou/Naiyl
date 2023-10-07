//
//  ProfileBuilder.swift
//  Naiyl
//
//  Created by ibaikaa on 8/10/23.
//

import SwiftUI

struct ProfileBuilder: BaseBuilder {
    static func create() -> some View {
        let viewModel = ProfileScreenViewModel()
        return ProfileScreen(viewModel: viewModel)
    }
}
