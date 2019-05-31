//
//  TabBarController.swift
//  VSMS
//
//  Created by Rathana on 5/30/19.
//  Copyright © 2019 121. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        TabBarConfig()
        
    }
    
    
    private func TabBarConfig(){
        let FirstVC = UINavigationController(rootViewController: NewHomepageViewController())
        
        let SecondVC = ViewController()
        SecondVC.title = "Tab Two"
        SecondVC.view.backgroundColor = UIColor.red
        
        let ThirdVC = ViewController()
        ThirdVC.title = "Tab Three"
        ThirdVC.view.backgroundColor = UIColor.orange
        
        let FourthVC = ViewController()
        FourthVC.title = "Tab Four"
        FourthVC.view.backgroundColor = UIColor.blue
        
        let FifthVC = ViewController()
        FifthVC.title = "Tab Five"
        FifthVC.view.backgroundColor = UIColor.black
        
        
        
        FirstVC.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)
        SecondVC.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 1)
        ThirdVC.tabBarItem = UITabBarItem(tabBarSystemItem: .downloads, tag: 2)
        FourthVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 3)
        FifthVC.tabBarItem = UITabBarItem(tabBarSystemItem: .featured, tag: 4)
        
        viewControllers = [FirstVC, SecondVC, ThirdVC, FourthVC, FifthVC]
    }


}
