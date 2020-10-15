//
//  AppDelegate.swift
//  EmnovaApp
//
//  Created by Emir Shayymov on 10/6/20.
//

import UIKit
import SafariServices
import Firebase

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        FirebaseApp.configure()
        
        window = UIWindow(frame: UIScreen.main.bounds)
        showWebScreen()
        
        return true
    }
    
    func showWebScreen() {
        let viewController = UIWebViewController()
        let navigationController = UICustomNavigationController(rootViewController: viewController)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
    
}

