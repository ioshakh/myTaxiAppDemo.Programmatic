//
//  AppDelegate.swift
//  myTaxiAppDemo.Programmatic
//
//  Created by Shakhzod Bektemirov on 2021/12/24.
//

import UIKit
import LGSideMenuController

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setView()
        return true
    }

 
    private func setView() {
        
     
        self.window = UIWindow(frame:UIScreen.main.bounds)
        
        let main = HomeVC()


        let leftViewController = SideMenuViewController()
        let sideMenuController = LGSideMenuController(rootViewController: main ,
                                                      leftViewController: leftViewController,
                                                      rightViewController: nil)

        sideMenuController.leftViewWidth = 319.0
        sideMenuController.leftViewPresentationStyle = .scaleFromBig
        
        
        
        self.window?.rootViewController = sideMenuController
        self.window?.makeKeyAndVisible()
    }
    
}

