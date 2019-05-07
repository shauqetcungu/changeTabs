//
//  AppCoordinator.swift
//  ChangeVC
//
//  Created by Saša Vujanovic on 22/04/2019.
//  Copyright © 2019 Shauqet Cungu. All rights reserved.
//

import UIKit

class AppCoordinator{
    
    let window: UIWindow
    
    let tabBarController = UITabBarController()
    let tabBarViewController1 = FirstViewController()
    let tabBarViewController2 = SecondViewController(collectionViewLayout: UICollectionViewFlowLayout())
    let tabBarViewController3 = ThirdViewController()
    let tabBarViewController4 = FourthViewController()
    let tabBarViewController5 = FifthViewController() 
    
    init(window: UIWindow = UIWindow(frame: UIScreen.main.bounds)) {
        self.window = window
    }
    
    func start(){
        tabBarController.tabBar.tintColor = #colorLiteral(red: 0.9725490196, green: 0.6274509804, blue: 0.1058823529, alpha: 1)
        let tabBarItem1 = tabBarViewController1.tabBarItem!
        tabBarItem1.image = UIImage(named: "001_newspaper")
        tabBarItem1.title = "VIJESTI"
        let tabBarItem2 = tabBarViewController2.tabBarItem!
        tabBarItem2.image = UIImage(named: "007_calendar")
        tabBarItem2.title = "EKO KALENDAR"
        let tabBarItem3 = tabBarViewController3.tabBarItem!
        tabBarItem3.image = UIImage(named: "006_megaphone_1")
        tabBarItem3.title = "PRIJAVI PROBLEM"
        let tabBarItem4 = tabBarViewController4.tabBarItem!
        tabBarItem4.image = UIImage(named: "sun")
        tabBarItem4.title = "OZON"
        let tabBarItem5 = tabBarViewController5.tabBarItem!
        tabBarItem5.image = UIImage(named: "group")
        tabBarItem5.title = "VIŠE"
        
        let controllers = [tabBarViewController1,tabBarViewController2,tabBarViewController3,tabBarViewController4,tabBarViewController5]
        tabBarController.viewControllers = controllers
        window.rootViewController = tabBarController
        window.makeKeyAndVisible()
    }
    
}
