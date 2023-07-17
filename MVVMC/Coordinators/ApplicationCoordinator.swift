//
//  ApplicationCoordinator.swift
//  MVVMC
//
//  Created by Rohit Pradhan on 17/07/23.
//

import UIKit
import Combine

class ApplicationCoordinator: Coordinator {
    var window: UIWindow
    var childCoordinators: [Coordinator] = []
    var isOnboardingCompleted = CurrentValueSubject<Bool, Never>(false)
    var subscription: Set<AnyCancellable> = .init()
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        
        isOnboardingCompleted.sink { [weak self] isCompleted in
            if !isCompleted {
                if let isOnboardingCompleted = self?.isOnboardingCompleted {
                    let onboardingCordinator = OnBoardingCoordinator(isOnboardingCompleted: isOnboardingCompleted)
                    onboardingCordinator.start()
                    self?.childCoordinators.append(onboardingCordinator)
                    self?.window.rootViewController = onboardingCordinator.rootViewController
                }
            } else {
                let mainCoordinator = MainCoordinator()
                mainCoordinator.start()
                self?.childCoordinators.append(mainCoordinator)
                self?.window.rootViewController = mainCoordinator.rootController
            }
        }.store(in: &subscription)

    }
}
