//
//  BaseTabBarController.swift
//  AppStore
//
//  Created by Franziska Kammerl on 2/24/19.
//  Copyright © 2019 Franziska Kammerl. All rights reserved.
//

import UIKit


class BaseTabBarController: UITabBarController {
    
    // 3 - maybe introduce our AppSearchController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [
            createNavController(viewController: TodayController(), title: "Today", imageName: "today_icon"),
            createNavController(viewController: AppsPageController(), title: "Apps", imageName: "apps"),
            createNavController(viewController: AppsSearchController(), title: "Search", imageName: "search")
        ]
    }
    
    fileprivate func createNavController(viewController: UIViewController, title: String, imageName: String) -> UIViewController {
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem.title = title
        viewController.navigationItem.title = title
        navController.navigationBar.prefersLargeTitles = true
        viewController.view.backgroundColor = .white
        navController.tabBarItem.image = UIImage(named: imageName)
        return navController
    }
}
