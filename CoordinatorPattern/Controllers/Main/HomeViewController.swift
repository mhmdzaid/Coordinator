//
//  ViewController.swift
//  CoordinatorPattern
//
//  Created by Mac on 1/22/20.
//  Copyright © 2020 spark-cloud. All rights reserved.
//

import UIKit



public class HomeViewController: BaseViewController {
    
     var mainCoordinator : MainCoordinator{
        return coordinator as! MainCoordinator
    }
    
    
    override public  func viewDidLoad() {
        super.viewDidLoad()
     
        
        //pushing
        // mainCoordinator.navigateTo(.homeDetails(""))
      
            
        
        // prsenting
      //  mainCoordinator.present(.homeDetails(""))
        
    }

    
    
    @IBAction func signInAction(_ sender: Any) {
        
        mainCoordinator.setRootCoorinator(mainCoordinator.childCoordinators[0])
        
    }
    
    
    
    
    
    

}





