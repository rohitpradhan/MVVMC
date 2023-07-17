//
//  SecondTabCoordinator.swift
//  MVVMC
//
//  Created by Rohit Pradhan on 17/07/23.
//

import UIKit
import SwiftUI

class SecondTabCoordinator: Coordinator {
    
    var rootController = UINavigationController()
    
    func start() {
        let secondViewController = UIHostingController(rootView: SecondView())
        rootController.setViewControllers([secondViewController], animated: false)
    }
    
}
