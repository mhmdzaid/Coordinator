//
//  Coordinator.swift
//  CoordinatorPattern
//
//  Created by Mac on 1/22/20.
//  Copyright © 2020 spark-cloud. All rights reserved.
//

import Foundation
import UIKit

public protocol Coordinator : class {
    //vars
    var childCoordinators : [Coordinator] {get set}
    var navigationController : UINavigationController {get set}
    var window : UIWindow?{get set}
    
    
    //methods
    func start()
    
}
