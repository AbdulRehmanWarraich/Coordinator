//
//  WelcomeViewController.swift
//  CoordinatorTest
//
//  Created by Abdulrehman Asghar on 06/09/2021.
//

import UIKit

class WelcomeViewController: BaseViewController {
    private var coordinator: MainCoordinator

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

     init(_ coordinator: MainCoordinator) {
        self.coordinator = coordinator
        super.init(nibName: nil, bundle: .main)
    }

    
    @IBAction func handleLoginButtonTap() {
        self.coordinator.navigate(to: .introduction(userName: "Abdulrehman"))
    }
    @IBAction func forgotButtonTap() {
        self.coordinator.navigate(to: .forgot)
    }
    @IBAction func homeButtonTap() {
        self.coordinator.navigateHome()
    }
}

