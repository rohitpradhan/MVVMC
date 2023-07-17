//
//  AppCoordinator.swift
//  MVVMC
//
//  Created by Rohit Pradhan on 17/07/23.
//

import UIKit
import SwiftUI
import Combine

class OnBoardingCoordinator: Coordinator {
    var rootViewController = UIViewController()
    var isOnboardingCompleted: CurrentValueSubject<Bool, Never>
    
    init(isOnboardingCompleted: CurrentValueSubject<Bool, Never>) {
        self.isOnboardingCompleted = isOnboardingCompleted
    }

    func start() {
        let viewController = UIHostingController(rootView: OnboardingView(flowCompleted: { [weak self] in
            self?.isOnboardingCompleted.send(true)
        }))
        self.rootViewController = viewController
    }
    
        
}

