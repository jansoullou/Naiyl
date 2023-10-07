//
//  HomeScreen.swift
//  Naiyl
//
//  Created by ibaikaa on 8/10/23.
//

import SwiftUI

struct HomeScreen: BaseScreen {
    @EnvironmentObject
    private var router: HomeCoordinator.Router
    
    @ObservedObject
    var viewModel = HomeScreenViewModel()
    
    var body: some View {
        Text("On \(viewModel.title) screen")
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
