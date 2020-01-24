//
//  AuthCoordinator.swift
//  CoordinatorPattern
//
//  Created by Mac on 1/22/20.
//  Copyright © 2020 spark-cloud. All rights reserved.
//

import Foundation
import UIKit

public enum AuthDestination{
    case register
}

public class AuthCoordinator : Coordinator{
    
    
    public var childCoordinators: [Coordinator]
    
    public var navigationController: UINavigationController
    
    public var window: UIWindow?
    
    
    init(_ window : UIWindow?){
        childCoordinators = []
        self.window = window
        navigationController = UINavigationController()
        
    }
    
    func factory()->AuthFactoryProtocol{
        return AuthFactory()
    }
    
    public func start() {
        let vc = factory().login()
        vc.coordinator = self
        navigationController.viewControllers.append(vc)
        window?.rootViewController = navigationController
    }
    
    
    
    
    //presenting

    public func present(_ destination : AuthDestination){
        switch destination{
        case .register :
            navigationController.present(factory().register(), animated: true, completion: nil)
        }
    }
    
    
    //pushing on navigation controller
    
    public func navigateTo(_ destination : AuthDestination){
        switch destination {
        case .register: // associated value to send to home Details
            navigationController.pushViewController(factory().register(), animated: true)
        default:
            return
        }
    }
    
    
    
    
    
}


public protocol AuthFactoryProtocol {
    func login()-> LoginViewController
    func register()->RegisterViewController
}



class AuthFactory : AuthFactoryProtocol{
    
    func login() -> LoginViewController {
        return LoginViewController.instance()
    }
    
    func register() -> RegisterViewController {
        return RegisterViewController.instance()
    }
    
    
    
}
