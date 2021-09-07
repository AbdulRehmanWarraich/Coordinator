//
//  AppDelegate.swift
//  CoordinatorTest
//
//  Created by Abdulrehman Asghar on 06/09/2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var coordinator: MainCoordinator?
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let navigationController = UINavigationController()
        
        let rcoordinator = MainCoordinator(navigationController: navigationController)
        rcoordinator.start()
        coordinator = rcoordinator
        
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        
        return true
    }

}

