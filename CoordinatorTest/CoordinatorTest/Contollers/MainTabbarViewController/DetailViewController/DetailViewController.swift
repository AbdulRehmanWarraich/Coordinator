//
//  DetailViewController.swift
//  CoordinatorTest
//
//  Created by Abdulrehman Asghar on 07/09/2021.
//

import UIKit

class DetailViewController: UIViewController {

    private var coordinator: DetailCoordinator
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(_ coordinator: DetailCoordinator) {
        self.coordinator = coordinator
        super.init(nibName: nil, bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func resetTapped(_ sender: UIButton) {
        coordinator.parentCoordinator.restart()
    }
}
