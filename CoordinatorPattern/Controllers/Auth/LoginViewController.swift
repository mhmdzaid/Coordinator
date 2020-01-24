//
//  LoginViewController.swift
//  CoordinatorPattern
//
//  Created by Mac on 1/22/20.
//  Copyright © 2020 spark-cloud. All rights reserved.
//

import UIKit

public class LoginViewController: BaseViewController {

    var authCoordinator : AuthCoordinator?{
        return coordinator as? AuthCoordinator
    }
    override public func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    @IBAction func loginAction(_ sender: Any) { // register button
        
        authCoordinator?.present(.register)
    }
    

}
