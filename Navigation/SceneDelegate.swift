//
//  SceneDelegate.swift
//  Navigation
//
//  Created by Апанасенко Михаил Витальевич on 14.12.2021.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }

        let window = UIWindow(windowScene: windowScene)

        let feedNavigationController = UINavigationController(rootViewController: FeedViewController())
        feedNavigationController.tabBarItem = UITabBarItem(title: "Feed", image: UIImage(systemName: "newspaper"), tag: 0)

        let profileNavigationController = UINavigationController(rootViewController: ProfileViewController())
        profileNavigationController.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "person"), tag: 1)

        let tabBarViewController = UITabBarController()
        tabBarViewController.viewControllers = [feedNavigationController, profileNavigationController]
        window.rootViewController = tabBarViewController
        window.makeKeyAndVisible()
        self.window = window
    }
}

