//
//  HomeVC.swift
//  myTaxiAppDemo.Programmatic
//
//  Created by Shakhzod Bektemirov on 2021/12/24.
//

import UIKit
import GoogleMaps
import SnapKit
import Localize_Swift
import LGSideMenuController


class HomeVC: UIViewController  {
   
     var delegate:HomeVcDelegate?
    
    private lazy var tabView:UIView = {
        let tabView = UIView()
        view.addSubview(tabView)
        tabView.snp.makeConstraints{
            $0.right.left.bottom.equalTo(view).inset(0)
            $0.height.equalTo(137)
        }
        return tabView
    }()
    
    
    private lazy var firstTabView:UIView = {
        let firstTab = UIView()
        tabView.addSubview(firstTab)
        firstTab.snp.makeConstraints{
            $0.right.left.top.equalTo(tabView).inset(16)
            $0.height.equalTo(52)
        }
        
        return firstTab
    }()
    
    
    private lazy var secondTabView:UIView = {
        let secondTab = UIView()
        tabView.addSubview(secondTab)
        secondTab.snp.makeConstraints{
            $0.top.equalTo(firstTabView.snp.bottom).offset(0)
            $0.right.left.bottom.equalTo(tabView).inset(16)
        }
       
        return secondTab
    }()
    
    
    private lazy var imageRedLightPin:UIImageView = {
        let redImagePin = UIImageView(
            image:UIImage(asset:Asset.MainTabBar.redPin)
        )
        return redImagePin
    }()
    
   
    private lazy var streetName:UILabel = {
        let streetName = UILabel(
            text:L10n.MainTabBar.nameOfStreet,
            font:FontFamily.Montserrat.medium.font(size:14),
            textColor:UIColor(hexString:"#B0B0B0")
        )
        
        return streetName
    }()
   
  
    
    private lazy var imageBlueLightPin:UIImageView = {
        let blueImage = UIImageView(
            image:UIImage(asset:Asset.MainTabBar.bluePin)
        )
        return blueImage
    }()
    
   
    private lazy var searchLabelText:UILabel = {
        let searchText = UILabel(
            text:L10n.MainTabBar.searchOfStreet,
            font:FontFamily.Montserrat.medium.font(size:14),
            textColor:UIColor(hexString:"#434343")
        )
        
        return searchText
    }()
    
    
    private lazy var nextBtn:UIButton = {
        let nextBtn = UIButton()
        nextBtn.setImage(UIImage(systemName:"arrow.right"), for:.normal)
        nextBtn.tintColor = UIColor(hexString:"#767676")
        return nextBtn
    }()
    
   
    
    
    private lazy var locationBtn:UIButton = {
        let locationbtn = UIButton()
        locationbtn.setImage(Asset.MainTabBar.btn_MyLocation.image, for:.normal)
        return locationbtn
    }()
    

    private lazy var sideBtn:UIButton = {
        let slideBtn = UIButton()
        slideBtn.setImage(Asset.MainTabBar.sideMenuBtn.image, for:.normal)
        slideBtn.addTarget(self, action:#selector(tapped(sender:)), for:.touchUpInside)
        return slideBtn
    }()
    
    @objc func tapped(sender:UIButton) {
   
        sideMenuController?.showLeftView(animated:true)
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
        
    }
    

    func setUp() {
        setGoogleMapView()
        setUpSnapKitConstraints()
        setColorBackground()
    }
    
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        tabView.roundCorners([.topLeft,.topRight], radius:10)
        firstTabView.roundCorners([.topLeft,.topRight], radius:10)
        secondTabView.roundCorners([.bottomLeft,.bottomRight], radius:10)
       
    }
}





extension HomeVC:HomeSnapKitLayout{
    
    
    func setColorBackground() {
        tabView.backgroundColor = UIColor(hexString:"#FFFFFF")
        firstTabView.backgroundColor = UIColor(hexString:"#F8F8F8")
        streetName.backgroundColor = UIColor(hexString:"#F8F8F8")
        secondTabView.backgroundColor = UIColor(hexString:"#F0F0F0")
        searchLabelText.backgroundColor = UIColor(hexString:"#F0F0F0")
        nextBtn.backgroundColor = UIColor(hexString:"#E5E5E3")
        secondTabView.borders(for:[.top], width:1, color:UIColor(hexString:"#E5E5E3"))
    }
    
    
   
    func setUpSnapKitConstraints() {
        firstTabViewSnapKitLayout()
        secondTabViewSnapKitLayout()
        mainViewButtonsSnapKitLayout()
    }
    
    
    
    func firstTabViewSnapKitLayout() {
        firstTabView.addSubview(imageRedLightPin)
        imageRedLightPin.snp.makeConstraints{
            $0.top.bottom.equalTo(firstTabView).inset(14)
            $0.left.equalTo(firstTabView).inset(12)
            $0.width.equalTo(24)
        }
        
        firstTabView.addSubview(streetName)
        streetName.snp.makeConstraints{ make in
            make.left.equalTo(imageRedLightPin.snp.right).offset(10)
            make.top.right.bottom.equalTo(firstTabView).inset(17)
        }
    }
    
    
    
    
    func secondTabViewSnapKitLayout() {
        secondTabView.addSubview(imageBlueLightPin)
        imageBlueLightPin.snp.makeConstraints{
            $0.top.bottom.equalTo(secondTabView).inset(14)
            $0.left.equalTo(secondTabView).inset(12)
            $0.width.equalTo(24)
        }
        
        secondTabView.addSubview(searchLabelText)
        searchLabelText.snp.makeConstraints{ make in
            make.left.equalTo(imageBlueLightPin.snp.right).offset(10)
            make.top.bottom.equalTo(secondTabView).inset(17)
        }
        
       
        secondTabView.addSubview(nextBtn)
        nextBtn.snp.makeConstraints{
            $0.right.top.bottom.equalTo(secondTabView).inset(0)
            $0.left.equalTo(searchLabelText.snp.right).offset(0)
            $0.width.equalTo(60)
        }
    }
    
    func mainViewButtonsSnapKitLayout(){
        view.addSubview(sideBtn)
        sideBtn.snp.makeConstraints{ make in
            make.left.equalTo(view).inset(16)
            make.top.equalTo(view).inset(48)
            make.height.width.equalTo(44)
        }
        
        view.addSubview(locationBtn)
        locationBtn.snp.makeConstraints{
            $0.bottom.equalTo(tabView.snp.top).offset(-20)
            $0.right.equalTo(view).inset(16)
            $0.width.height.equalTo(36)
        }
      
    }
}


extension HomeVC:GoogleMapDelegate {
    func setGoogleMapView() {
        GMSServices.provideAPIKey("AIzaSyDClFmdoNGGi0QIev0PAREOxyT40ofQWaQ")
        let camera = GMSCameraPosition.camera(withLatitude:41.264155568400135, longitude:69.18802958745613, zoom:15)
        let mapView = GMSMapView.map(withFrame:CGRect.zero, camera:camera)
        view =  mapView


        let currentLocation = CLLocationCoordinate2D(latitude:41.264155568400135, longitude:69.18802958745613)
        let marker = GMSMarker(position:currentLocation)
        marker.title = "IlonOta Masjid"
        marker.icon = UIImage(asset:Asset.MainTabBar.mapPin)
        marker.map = mapView

    }
}



final class TransitionManager: NSObject, UIViewControllerAnimatedTransitioning {
    
    private let duration: TimeInterval
    
    var widthConstraint: Constraint? = nil
    var heightConstraint: Constraint? = nil
    
    init(duration: TimeInterval) {
        self.duration = duration
    }
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return duration
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {}
}


