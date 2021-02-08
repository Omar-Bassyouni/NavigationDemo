//
//  Router.swift
//  NavigationDemo
//
//  Created by Omar Bassyouni on 08/02/2021.
//

import UIKit

protocol Router {
    func present(_ view: UIViewController)
}

class UINavigationRouter: Router {
    let navigationController: UINavigationController
    
    init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func present(_ view: UIViewController) {
        
        navigationController.pushViewController(view, animated: true)
    }    
}

class SwiftUINaviagtionRouter: Router {
    func present(_ view: UIViewController) {
        
    }
}
