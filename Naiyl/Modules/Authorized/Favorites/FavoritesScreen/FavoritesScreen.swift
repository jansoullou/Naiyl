//
//  FavoritesScreen.swift
//  Naiyl
//
//  Created by ibaikaa on 8/10/23.
//

import SwiftUI

struct FavoritesScreen: BaseScreen {
    @EnvironmentObject
    private var router: FavoritesCoordinator.Router
    
    @ObservedObject
    var viewModel = FavoritesScreenViewModel()
    
    var body: some View {
        Text("On \(viewModel.title) screen")
    }
}

struct FavoritesScreen_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesScreen()
    }
}

