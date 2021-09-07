//
//  MainCoordinator.swift
//  CoordinatorTest
//
//  Created by Abdulrehman Asghar on 06/09/2021.
//

import UIKit

class MainCoordinator: Coordinator {
    // Here we define a set of supported destinations using an
    // enum, and we can also use associated values to add support
    // for passing arguments from one screen to another.
    enum Destination {
        case introduction(userName: String)
        case forgot
        case home
    }
    
    // In most cases it's totally safe to make this a strong
    // reference, but in some situations it could end up
    // causing a retain cycle, so better be safe than sorry :)
    private(set) var navigationController: UINavigationController
    
    // MARK: - Initializer
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    // Starts the flow of the application
    func start() {
        let viewController = WelcomeViewController(self)
        navigationController.setViewControllers([viewController], animated: false)
    }
    
    func restart() {
        let viewController = WelcomeViewController(self)
        navigationController.setViewControllers([viewController], animated: false)
    }
    // MARK: - Navigator
    
    func navigate(to destination: Destination) {
        let viewController = makeViewController(for: destination)
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func navigateHome() {
        let viewController = makeViewController(for: .home)
        navigationController.setViewControllers([viewController], animated: true)
    }
    
    // MARK: - Private
    
    private func makeViewController(for destination: Destination) -> UIViewController {
        switch destination {
        case .introduction(let userName):
            return IntroductionViewController(self, userName: userName)
        case .forgot:
            return ForgotViewController(self)
        case .home:
            return MainTabbarViewController(self)
        }
    }
}
