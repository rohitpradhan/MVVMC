//
//  FirstTabCoordinator.swift
//  MVVMC
//
//  Created by Rohit Pradhan on 17/07/23.
//

import UIKit
import SwiftUI

class FirstTabCoordinator: Coordinator {
    
    var rootController = UINavigationController()
    let firstViewModel = FirstViewModel()
    func start() {
        let firstViewController = UIHostingController(rootView: FirstView(viewModel: firstViewModel))
        rootController.setViewControllers([firstViewController], animated: false)
    }
}
