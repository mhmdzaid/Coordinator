//
//  BaseViewController.swift
//  CoordinatorPattern
//
//  Created by Mac on 1/22/20.
//  Copyright © 2020 spark-cloud. All rights reserved.
//

import UIKit

public class BaseViewController: UIViewController, Coordination {
   
    
    public var coordinator: Coordinator?
    

    override public func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    

}
