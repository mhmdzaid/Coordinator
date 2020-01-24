//
//  MainFactory.swift
//  CoordinatorPattern
//
//  Created by Mac on 1/22/20.
//  Copyright © 2020 spark-cloud. All rights reserved.
//

import Foundation


// protocol responsible for creating Main ViewControllers of the app
public protocol MainFactoryProtocol {
    func homeVC()->HomeViewController
    func homeDetailsVC (_ message : String)-> HomeDetailsViewController
}



public class MainFactory : MainFactoryProtocol{
   
    public func homeVC() -> HomeViewController {
        return HomeViewController.instance()
    }
    
    public func homeDetailsVC (_ message : String)-> HomeDetailsViewController{
        let vc =  HomeDetailsViewController.instance()
        // vc.message = message
        return vc
    }
    
    
    
}
