//
//  HomeVCProtocols.swift
//  myTaxiAppDemo.Programmatic
//
//  Created by Shakhzod Bektemirov on 2021/12/25.
//


import UIKit
import LGSideMenuController

protocol GoogleMapDelegate {
    func setGoogleMapView()
}


protocol HomeSnapKitLayout{
   func setColorBackground()
   func setUpSnapKitConstraints()
   func firstTabViewSnapKitLayout()
   func secondTabViewSnapKitLayout()
   func mainViewButtonsSnapKitLayout()
}


protocol lgSideMenuControllerDelegate {
    func showAnimationsForLeftView(sideMenuController: LGSideMenuController,
                                               duration: TimeInterval,
                                               timingFunction: CAMediaTimingFunction)

    func hideAnimationsForLeftView(sideMenuController: LGSideMenuController,
                                               duration: TimeInterval,
                                               timingFunction: CAMediaTimingFunction)

}


protocol HomeVcDelegate:AnyObject {
    func tappedButton(sender:UIButton)
}
