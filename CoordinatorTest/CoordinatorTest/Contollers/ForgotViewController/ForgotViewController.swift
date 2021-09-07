//
//  ForgotViewController.swift
//  CoordinatorTest
//
//  Created by Abdulrehman Asghar on 06/09/2021.
//

import UIKit

class ForgotViewController: UIViewController {
    
    private var coordinator: MainCoordinator
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(_ coordinator: MainCoordinator) {
        self.coordinator = coordinator
        super.init(nibName: nil, bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
