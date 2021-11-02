//
//  AppDelegate.swift
//  AccountApp
//
//  Created by Muzammil Peer on 02/11/2021.
//

import UIKit
import AccountModule
@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    var coordinator: AccountCoordinatorImpl?
    var isEnglish:Bool = true

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let navController = UINavigationController()
        // send that into our coordinator so that it can display view controllers
        coordinator = nil
        coordinator = AccountCoordinatorImpl.init(navigationController: navController, flowListener: nil)

        // tell the coordinator to take over control
        coordinator?.start()

        // create a basic UIWindow and activate it
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navController
        window?.makeKeyAndVisible()

        return true
    }
    
//    func applyLocalization()
//    {
//        if LocalizationSystem.sharedInstance.getLanguage() == "ar" {
//            LocalizationSystem.sharedInstance.setLanguage(languageCode: "en")
//            UIView.appearance().semanticContentAttribute = .forceLeftToRight
//        } else {
//            LocalizationSystem.sharedInstance.setLanguage(languageCode: "ar")
//            UIView.appearance().semanticContentAttribute = .forceRightToLeft
//        }
//        let navController = UINavigationController()
//        // send that into our coordinator so that it can display view controllers
//        coordinator = nil
//        coordinator = MainCoordinator(navigationController: navController)
//
//        // tell the coordinator to take over control
//        coordinator?.start()
//
//        window?.rootViewController = navController
//    }

}

