//
//  AppDelegate.swift
//  EssentialApp
//
//  Created by Jason Kuan on 2023-01-29.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        let configuration = UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
        
        #if DEBUG
        configuration.delegateClass = DebuggingSceneDelegate.self
        #endif
        
        return configuration
    }
    
}
