//
//  SceneDelegate.swift
//  MVVMC
//
//  Created by Rohit Pradhan on 17/07/23.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var appCoordinator: ApplicationCoordinator?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            self.appCoordinator = ApplicationCoordinator(window: window)
            self.appCoordinator?.start()
            window.makeKeyAndVisible()
        }
    }

}

