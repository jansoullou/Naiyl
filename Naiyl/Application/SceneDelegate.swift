//
//  SceneDelegate.swift
//  Naiyl
//
//  Created by Zhansuluu Kydyrova on 7/10/23.
//

import UIKit
import SwiftUI
import Stinsen

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        self.setRootVC(scene)
    }
    
    private func setRootVC(_ scene: UIScene) {
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            let contentView = NavigationViewCoordinator(RootCoordinator())
            
            let hosting = UIHostingController(
                rootView: contentView.view()
                    .navigationBarHidden(true)
            )
            window.rootViewController = hosting
            self.window = window
            self.window?.makeKeyAndVisible()
        }
    }
    
    func sceneDidDisconnect(_ scene: UIScene) {
        print("Scene Did Disconnect")
    }
    
    func sceneDidBecomeActive(_ scene: UIScene) {
        print("Scene Did Become Active")
    }
    
    func sceneWillResignActive(_ scene: UIScene) {
        print("Scene Will Resign Active")
    }
    
    func sceneWillEnterForeground(_ scene: UIScene) {
        print("Scene Will Enter Foreground")
    }
    
    func sceneDidEnterBackground(_ scene: UIScene) {
        print("Scene Did Enter Foreground")
    }
    
}

