//
//  MainTabbarViewController.swift
//  CoordinatorTest
//
//  Created by Abdulrehman Asghar on 06/09/2021.
//

import UIKit

class MainTabbarViewController: UITabBarController {

    private var coordinator: MainCoordinator
    private var homeCoordinator: HomeCoordinator
    private var detailCoordinator: DetailCoordinator
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(_ coordinator: MainCoordinator) {
        self.coordinator = coordinator
        
        homeCoordinator = HomeCoordinator(navigationController: UINavigationController(), parentCoordinator: coordinator)
        detailCoordinator = DetailCoordinator(navigationController: UINavigationController(), parentCoordinator: coordinator)
        
        super.init(nibName: nil, bundle: nil)
        print("init(_ coordinator: MainCoordinator) {")
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
//        homeCoordinator = HomeCoordinator(navigationController: UINavigationController(), parentCoordinator: coordinator!)
        homeCoordinator.start()
        
//        detailCoordinator = DetailCoordinator(navigationController: UINavigationController(), parentCoordinator: coordinator!)
        detailCoordinator.start()
        
        viewControllers = [homeCoordinator.navigationController, detailCoordinator.navigationController]
    }

}
