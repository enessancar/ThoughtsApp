//
//  TabBarViewController.swift
//  Thoughts
//
//  Created by Enes Sancar on 24.02.2023.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpControllers()
    }
    
    private func setUpControllers() {
        let homeVC = UINavigationController(rootViewController: HomeViewController())
        let profileVC = UINavigationController(rootViewController: ProfileViewController())
        
        homeVC.navigationItem.largeTitleDisplayMode = .always
        profileVC.navigationItem.largeTitleDisplayMode = .always
        
        homeVC.navigationBar.prefersLargeTitles = true
        profileVC.navigationBar.prefersLargeTitles = true
        
        homeVC.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)
        profileVC.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "person.circle"), tag: 2)
        
        setViewControllers([homeVC, profileVC], animated: true)
    }
}
