//
//  LaunchScreen.swift
//  Naiyl
//
//  Created by ibaikaa on 8/10/23.
//

import SwiftUI

struct LaunchScreen: BaseScreen {
    @EnvironmentObject
    var router: RootCoordinator.Router
    
    @ObservedObject
    var viewModel = LaunchScreenViewModel()
    
    var body: some View {
        BaseContainer {
            ZStack {
                Text(viewModel.logoTitle)
                    .font(.system(size: 40, design: .serif))
                    .multilineTextAlignment(.center)
                    .onChange(of: viewModel.isLoading) { isLoading in
                        if !isLoading {
                            router.route(to: \.toMain)
                        }
                    }
                
                if viewModel.isLoading {
                    ProgressView()
                        .progressViewStyle(.circular)
                        .offset(y: 60)
                }
            }
        }
    }
    
}

struct LaunchScreen_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreen()
    }
}
