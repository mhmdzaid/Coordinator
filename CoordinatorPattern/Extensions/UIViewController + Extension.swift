//
//  UIViewController + Extension.swift
//  CoordinatorPattern
//
//  Created by Mac on 1/22/20.
//  Copyright © 2020 spark-cloud. All rights reserved.
//

import Foundation
import UIKit


 extension UIViewController {
    
    static func instance(stb : StoryBoard = .Main)-> Self{
    let identifier = String(describing :Self.self)
        let stb = UIStoryboard(name: stb.rawValue, bundle: .main)
        let vc = stb.instantiateViewController(identifier: identifier)
        return vc as! Self
    }
    
}


public protocol Coordination {
    var coordinator : Coordinator?{get set}
}
