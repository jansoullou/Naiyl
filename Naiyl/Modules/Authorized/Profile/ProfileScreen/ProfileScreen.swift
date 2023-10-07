//
//  ProfileScreen.swift
//  Naiyl
//
//  Created by ibaikaa on 8/10/23.
//

import SwiftUI

struct ProfileScreen: BaseScreen {
    @EnvironmentObject
    private var router: ProfileCoordinator.Router
    
    @ObservedObject
    var viewModel = ProfileScreenViewModel()
    
    var body: some View {
        Text("On \(viewModel.title) screen")
    }
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
    }
}
