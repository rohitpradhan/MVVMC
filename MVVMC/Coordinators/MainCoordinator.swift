//
//  MainCoordinator.swift
//  MVVMC
//
//  Created by Rohit Pradhan on 17/07/23.
//

import UIKit
import SwiftUI

class MainCoordinator: Coordinator {
    var childViewControllers: [Coordinator] = []
    var rootController = UITabBarController()
    
    func start() {
        let firstCoordinator = FirstTabCoordinator()
        firstCoordinator.start()
        firstCoordinator.rootController.tabBarItem = UITabBarItem(title: "First", image: UIImage(systemName: "paperplane"), selectedImage: UIImage(systemName: "paperplane.fill"))
        
        let secondCoordinator = SecondTabCoordinator()
        secondCoordinator.start()
        secondCoordinator.rootController.tabBarItem = UITabBarItem(title: "Second", image: UIImage(systemName: "bell"), selectedImage: UIImage(systemName: "bell.fill"))
        
        
        childViewControllers = [firstCoordinator, secondCoordinator]
        
        rootController.setViewControllers([firstCoordinator.rootController, secondCoordinator.rootController], animated: false)

    }
}


