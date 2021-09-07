//
//  Navigator.swift
//  CoordinatorTest
//
//  Created by Abdulrehman Asghar on 06/09/2021.
//

import UIKit

protocol Coordinator {
    associatedtype Destination
    
    func navigate(to destination: Destination)
}

