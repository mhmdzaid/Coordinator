//
//  MainCoordinator.swift
//  CoordinatorPattern
//
//  Created by Mac on 1/22/20.
//  Copyright © 2020 spark-cloud. All rights reserved.
//

import Foundation
import UIKit

public enum MainDestination{
    case homeDetails(String)
}

public class MainCoordinator : Coordinator{
    
    
    public var window: UIWindow?
    
    public var childCoordinators: [Coordinator]
    
    public var navigationController: UINavigationController
    
    
    public func factory()->MainFactoryProtocol{
        return MainFactory()
    }

    
    init(_ window :UIWindow?) {
        childCoordinators = [AuthCoordinator(window)] // child coordinators
        self.window = window
        let rootVC = HomeViewController.instance()
        navigationController = UINavigationController(rootViewController: rootVC )
         rootVC.coordinator = self
    }
    
    
    func setRootCoorinator(_ coordinator : Coordinator){
        coordinator.start()
    }
    
    
    public func start() {
        window?.rootViewController = navigationController
    }
    
    //presenting

    public func present(_ destination : MainDestination){
        switch destination{
        case.homeDetails(let message) :
            navigationController.present(factory().homeDetailsVC(message), animated: true, completion: nil)
        }
    }
    
    
    //pushing on navigation controller
    
    public func navigateTo(_ destination : MainDestination){
        switch destination {
        case .homeDetails(let message): // associated value to send to home Details
            navigationController.pushViewController(factory().homeDetailsVC(message), animated: true)
        default:
            return
        }
    }
    
    
    // dimissing
    
    
    func dismiss(animated : Bool , completion : (()->Void)?){
        navigationController.dismiss(animated: animated, completion: completion)
    }
 
    
}


