//
//  DetailCoordinator.swift
//  CoordinatorTest
//
//  Created by Abdulrehman Asghar on 07/09/2021.
//

import UIKit

class DetailCoordinator: Coordinator {
    // Here we define a set of supported destinations using an
    // enum, and we can also use associated values to add support
    // for passing arguments from one screen to another.
    enum Destination {
        case details
        
    }
    
    // In most cases it's totally safe to make this a strong
    // reference, but in some situations it could end up
    // causing a retain cycle, so better be safe than sorry :)
    private(set) var navigationController: UINavigationController
    private(set) var parentCoordinator: MainCoordinator
    
    // MARK: - Initializer
    
    init(navigationController: UINavigationController, parentCoordinator: MainCoordinator) {
        navigationController.setNavigationBarHidden(true, animated: true)
        self.navigationController = navigationController
        self.parentCoordinator = parentCoordinator
    }
    
    // Starts the flow of the application
    func start() {
        let homeViewController = DetailViewController(self)
        homeViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 1)
        navigationController.viewControllers = [homeViewController]
    }
    
    // MARK: - Navigator
    
    func navigate(to destination: Destination) {
        let viewController = makeViewController(for: destination)
        navigationController.pushViewController(viewController, animated: true)
    }

    
    // MARK: - Private
    
    private func makeViewController(for destination: Destination) -> UIViewController {
        switch destination {
        case .details:
            return UIViewController()
        }
    }
}
