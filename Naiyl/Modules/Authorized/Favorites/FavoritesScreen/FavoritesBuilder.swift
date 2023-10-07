//
//  FavoritesBuilder.swift
//  Naiyl
//
//  Created by ibaikaa on 8/10/23.
//

import SwiftUI

struct FavoritesBuilder: BaseBuilder {
    static func create() -> some View {
        let viewModel = FavoritesScreenViewModel()
        return FavoritesScreen(viewModel: viewModel)
    }
}
